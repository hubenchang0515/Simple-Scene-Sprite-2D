/*
 *  File    : SSS_Scene.cpp
 *  Author  : Plan C
 *  Blog    : blog.kurukurumi.com
 *  E-mail  : hubenchang0515@outlook.com
 */

#include "SSS_Scene.h"

namespace sss2d{
// class AbstractScene {
/* constructor of AbstractScene , save the renderer of app */
AbstractScene::AbstractScene(Application* app) 
    : application_(app)
{
    
}

/* get renderer */
Renderer* AbstractScene::renderer()
{
    return this->application_->renderer();
}

/* get application */
Application* AbstractScene::app()// final
{
    return this->application_;
}

/* add sprite */
void AbstractScene::addSprite(AbstractSprite* sprite)// final
{
    if(sprite->scene() != nullptr)
    {
        throw std::runtime_error("Sprite had been added to another scene yet.");
    }
    this->sprites_.push_back(sprite);
    sprite->scene_ = this;
}

/* remove a sprite */
void AbstractScene::removeSprite(AbstractSprite* sprite)// final
{
    this->sprites_.remove(sprite);
}

/* draw all sprites belong to this scene */
void AbstractScene::drawSprites() //final
{
    for(const auto& sprite : this->sprites_)
    {
        sprite->draw();
    }
}

/* update all sprites belong to this scene */
void AbstractScene::updateSprites()// final
{
    for(const auto& sprite : this->sprites_)
    {
        sprite->update();
    }
}

/* send event to all sprites belong to this scene */
void AbstractScene::sendEvent(SDL_Event event)// final
{
    for(const auto& sprite : this->sprites_)
    {
        sprite->dealEvent(event);
    }
}
// } class AbstractScene












// class Scene {
/* constructor of Scene , save the renderer of app */
Scene::Scene(Application* app) 
    : AbstractScene(app)
{
    this->background_ = nullptr;
}

Scene::~Scene()
{
    if(this->background_ != nullptr)
    {
        SDL_DestroyTexture(this->background_);
    }
}

bool Scene::dealEvent(SDL_Event event)
{
    sendEvent(event);
    return true;
}

bool Scene::update()
{
    updateSprites();
    return true;
}

bool Scene::draw()
{
    SDL_SetRenderTarget(renderer(),NULL);// target : window
    if(this->background_ != nullptr)
    {
        SDL_RenderCopy(renderer(),this->background_,NULL,NULL);
    }
    drawSprites();
    return true;
}

/* set image by file */
void Scene::setBackground(std::string file)
{
    Surface* surface = IMG_Load(file.c_str());
    if(surface == nullptr)
    {
        IMG_THROW();
    }
    
    if(this->background_ != nullptr)
    {
        SDL_DestroyTexture(this->background_);
    }
    
    this->background_ = SDL_CreateTextureFromSurface(renderer(),surface);
    if(this->background_ == nullptr)
    {
        SDL_THROW();
    }
    
    SDL_FreeSurface(surface);
}

/* set image by surface */
void Scene::setBackground(Surface* surface)
{
    if(this->background_ != nullptr)
    {
        SDL_DestroyTexture(this->background_);
    }    
    
    this->background_ = SDL_CreateTextureFromSurface(renderer(),surface);
    if(this->background_ == nullptr)
    {
        SDL_THROW();
    }
}

/* set image by texture */
void Scene::setBackground(Texture* texture)
{
    if(this->background_ != nullptr)
    {
        SDL_DestroyTexture(this->background_);
    }

    this->background_ = texture;
}

// } class Scene







// class WideScene {
/* constructor */
WideScene::WideScene(int width,int height,Application* app)
    : AbstractScene(app) , width_(width) , height_(height)
{
    this->setFocus(width/2,height/2);
    this->background_ = nullptr;
    
    this->texture_ = SDL_CreateTexture(renderer(),SDL_PIXELFORMAT_RGBA8888,
                             SDL_TEXTUREACCESS_TARGET, width, height);
                             
    if(this->texture_ == nullptr)
    {
        SDL_THROW();
    }
    
}

/* destructor */
WideScene::~WideScene()
{
    if(this->background_ != nullptr)
    {
        SDL_DestroyTexture(this->background_);
    }
    
    SDL_DestroyTexture(this->texture_);
}


bool WideScene::dealEvent(SDL_Event event)
{
    sendEvent(event);
    return true;
}

bool WideScene::update()
{
    updateSprites();
    return true;
}

bool WideScene::draw()
{
    
    SDL_SetRenderTarget(renderer(),this->texture_);  // target : this->texture
    SDL_RenderClear(renderer());
    if(this->background_ != nullptr)
    {
        SDL_RenderCopy(renderer(),this->background_,NULL,NULL);
    }
    
    drawSprites();
    
    SDL_SetRenderTarget(renderer(),NULL); /// target : window
    SDL_RenderCopy(renderer(),this->texture_,&this->visiable_,NULL);
    
    return true;
}

/* return width */
int WideScene::width()
{
    return this->width_;
}

/* return height */
int WideScene::height()
{
    return this->height_;
}

/* set focus */
void WideScene::setFocus(Position focus)
{
    this->focus_ = focus;
    
    /* out of border */
    if(this->focus_.x < app()->width()/2)
    {
        this->focus_.x = app()->width()/2;
    }
    
    if(this->focus_.x > this->width_ - app()->width()/2)
    {
        this->focus_.x = this->width_ - app()->width()/2;
    }
    
    if(this->focus_.y < app()->height()/2)
    {
        this->focus_.y = app()->height()/2;
    }
    
    if(this->focus_.y > this->height_ - app()->height()/2)
    {
        this->focus_.y = this->height_ - app()->height()/2;
    }
    
    /* visiable area */
    this->visiable_ = { focus_.x - app()->width()/2 , focus_.y - app()->height()/2,
                        app()->width(), app()->height() };
}

/* set focus */
void WideScene::setFocus(int x,int y)
{
    this->setFocus({x,y});
}

/* return focus */
Position WideScene::focus()
{
    return this->focus_;
}

/* set image by file */
void WideScene::setBackground(std::string file)
{
    Surface* surface = IMG_Load(file.c_str());
    if(surface == nullptr)
    {
        IMG_THROW();
    }
    
    if(this->background_ != nullptr)
    {
        SDL_DestroyTexture(this->background_);
    }
    
    this->background_ = SDL_CreateTextureFromSurface(renderer(),surface);
    if(this->background_ == nullptr)
    {
        SDL_THROW();
    }
    
    SDL_FreeSurface(surface);
}

/* set image by surface */
void WideScene::setBackground(Surface* surface)
{
    if(this->background_ != nullptr)
    {
        SDL_DestroyTexture(this->background_);
    }    
    
    this->background_ = SDL_CreateTextureFromSurface(renderer(),surface);
    if(this->background_ == nullptr)
    {
        SDL_THROW();
    }
}

/* set image by texture */
void WideScene::setBackground(Texture* texture)
{
    if(this->background_ != nullptr)
    {
        SDL_DestroyTexture(this->background_);
    }

    this->background_ = texture;
}
// } class WideScene
};// namespace sss2d
