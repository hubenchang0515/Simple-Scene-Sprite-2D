/*
 *  File    : SSS_Sprite.cpp
 *  Version : beta 0.1
 *  Date    : alpha-7-12
 *  Author  : Plan C
 *  Blog    : blog.kurukurumi.com
 *  E-mail  : hubenchang0515@outlook.com
 */

#include "SSS_Sprite.h"

namespace sss2d{

// class AbstructSprite {
AbstractSprite::AbstractSprite(AbstractScene* scene)
    : scene_(scene)
{
    scene->addSprite(this);
}

/* get scene */
AbstractScene* AbstractSprite::scene()// final
{
    return this->scene_;
}

/* get renderer */
Renderer* AbstractSprite::renderer()// final
{
    return this->scene_->renderer();
}
// } class AbstructSprite

// class AreaSprite {
AreaSprite::AreaSprite(AbstractScene* scene)
    : AbstractSprite(scene)
{
    
}

void AreaSprite::update()
{

}

void AreaSprite::draw()
{
    setDrawColor(this->renderer(),this->color_);
    fillArea(this->renderer(),this->area_);
}

void AreaSprite::setArea(Area area)
{
    this->area_ = area;
}

void AreaSprite::setColor(Color color)
{
    this->color_ = color;
}
// } class AreaSprite

};// sss2d
