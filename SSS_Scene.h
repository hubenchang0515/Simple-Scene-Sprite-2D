/*
 *  File    : SSS_Scene.h
 *  Version : alpha 0.1
 *  Date    : 2017-7-11
 *  Author  : Plan C
 *  Blog    : blog.kurukurumi.com
 *  E-mail  : hubenchang0515@outlook.com
 */
#ifndef SSS_SCENE_H
#define SSS_SCENE_H

#include <list>

#include "SSS_Base.h"
#include "SSS_Application.h"
#include "SSS_Sprite.h"

namespace sss2d{

class AbstractScene
{
public:
    AbstractScene(Application* app = nullptr);
    
    virtual bool dealEvent(SDL_Event event) = 0;
    virtual bool update() = 0;
    virtual bool draw() = 0;
    
    virtual Renderer* renderer() final;
    virtual Application* app() final;
    virtual void addSprite(AbstractSprite* sprite) final;
    virtual void removeSprite(std::list<AbstractSprite*>::iterator sprite) final;
    virtual void drawSprites() final;

private:
    Application* const          application_;
    std::list<AbstractSprite*>  sprites_; 
};

class Scene : public AbstractScene
{
public:
    Scene(Application* app = nullptr);
    
    bool dealEvent(SDL_Event event);
    bool update();
    bool draw();
    
private:
    //std::list<>
};

};// namespace sss2d

#endif // SSS_SCENE_H
