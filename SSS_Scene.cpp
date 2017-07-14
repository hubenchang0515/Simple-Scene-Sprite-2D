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
    if(sprite->scene() != this)
    {
        throw std::runtime_error("Sprite had been added to another scene yet.");
    }
    this->sprites_.push_back(sprite);
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
    drawSprites();
    return true;
}

// } class Scene

};// namespace sss2d
