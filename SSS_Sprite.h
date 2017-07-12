/*
 *  File    : SSS_Sprite.h
 *  Version : alpha 0.1
 *  Date    : 2017-7-12
 *  Author  : Plan C
 *  Blog    : blog.kurukurumi.com
 *  E-mail  : hubenchang0515@outlook.com
 */
#ifndef SSS_SPRITE_H
#define SSS_SPRITE_H


#include <list>

#include "SSS_Base.h"
#include "SSS_Scene.h"

namespace sss2d{

class AbstractSprite
{
public:
    AbstractSprite(AbstractScene* scene = nullptr);

    virtual void update() = 0;
    virtual void draw() = 0;
    
    virtual AbstractScene* scene() final;
    virtual Renderer* renderer() final;

private:
    AbstractScene* const scene_;
    Renderer* renderer_;
};



class AreaSprite : public AbstractSprite
{
public:
    AreaSprite(AbstractScene* scene = nullptr);

    virtual void update();
    virtual void draw();
    
    void setArea(Area area);
    void setColor(Color color);

private:
    Area area_;
    Color color_;
};

};// namespace sss2d

#endif // SSS_SPRITE_H
