/*
 *  File    : SSS_Sprite.cpp
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

void AreaSprite::setArea(int x,int y,int w,int h)
{
    this->area_.x = x;
    this->area_.y = y;
    this->area_.w = w;
    this->area_.h = h;
}

void AreaSprite::setColor(Color color)
{
    this->color_ = color;
}

void AreaSprite::setColor(Uint8 r,Uint8 g,Uint8 b,Uint8 a)
{
    this->color_.r = r;
    this->color_.g = g;
    this->color_.b = b;
    this->color_.a = a;
}
// } class AreaSprite


// class TextSprite {
TTF_Font* TextSprite::font_ = nullptr;
std::string TextSprite::fontFile_ = "";
size_t TextSprite::fontSize_ = 16;

void TextSprite::setFont(std::string file)
{
	TTF_CloseFont(TextSprite::font_);
	TextSprite::fontFile_ = file;
	TextSprite::font_ = TTF_OpenFont(file.c_str(),
								TextSprite::fontSize_);
								
	if(TextSprite::font_ == nullptr)
	{
		TTF_THROW();
	}
}

void TextSprite::setFontSize(size_t size)
{
	TextSprite::fontSize_ = size;
	TTF_CloseFont(TextSprite::font_);
	TextSprite::font_ = TTF_OpenFont(TextSprite::fontFile_.c_str(),size);
	
	if(TextSprite::font_ == nullptr)
	{
		TTF_THROW();
	}
}

TextSprite::TextSprite(AbstractScene* scene)
	: AbstractSprite(scene)
{
    this->texture_ = nullptr;
}

void TextSprite::update()
{

}

void TextSprite::draw()
{
    if(this->texture_ != nullptr)
    {
    	//setDrawColor(this->renderer(),this->color_);
    	drawTexture(this->renderer(),this->texture_,this->position_);
	}
}

void TextSprite::setText(std::string text)
{
    this->text_ = text;
    SDL_DestroyTexture(this->texture_);
	Surface* surface = TTF_RenderText_Blended(TextSprite::font_,
	                                          text.c_str(),this->color_);
	this->texture_ = SDL_CreateTextureFromSurface(this->renderer(),surface);
	SDL_FreeSurface(surface);
}

void TextSprite::setPosition(Position center)
{
	this->position_ = center;
}

void TextSprite::setPosition(int x,int y)
{
    this->position_.x = x;
    this->position_.y = y;
}

void TextSprite::setColor(Color color)
{
	this->color_ = color;
	SDL_DestroyTexture(this->texture_);
	Surface* surface = TTF_RenderUTF8_Blended(TextSprite::font_,
	                                          this->text_.c_str(),this->color_);
	this->texture_ = SDL_CreateTextureFromSurface(this->renderer(),surface);
	SDL_FreeSurface(surface);
}

void TextSprite::setColor(Uint8 r,Uint8 g,Uint8 b,Uint8 a)
{
    this->color_.r = r;
    this->color_.g = g;
    this->color_.b = b;
    this->color_.a = a;
    
    SDL_DestroyTexture(this->texture_);
	Surface* surface = TTF_RenderUTF8_Blended(TextSprite::font_,
	                                          this->text_.c_str(),this->color_);
	this->texture_ = SDL_CreateTextureFromSurface(this->renderer(),surface);
	SDL_FreeSurface(surface);
}
// } class TextSprite
};// sss2d
