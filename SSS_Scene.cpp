/*
 *  File    : SSS_Scene.cpp
 *  Version : alpha 0.1
 *  Date    : 2017-7-11
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
    this->sprites_.push_back(sprite);
}

/* remove a sprite */
void AbstractScene::removeSprite(std::list<AbstractSprite*>::iterator sprite)// final
{
    this->sprites_.erase(sprite);
}

/* draw all sprites belong to this scene */
void AbstractScene::drawSprites() //final
{
    for(const auto& sprite : this->sprites_)
    {
        sprite->draw();
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
    SDL_Log("scene poll event\n");
    return true;
}

bool Scene::update()
{
    SDL_Log("FPS : %lf\n",app()->realFps());
    return true;
}

bool Scene::draw()
{
    drawSprites();
    
    return true;
}

// } class Scene

};// namespace sss2d
