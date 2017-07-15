/*
 *  File    : SSS_Sprite.cpp
 *  Author  : Plan C
 *  Blog    : blog.kurukurumi.com
 *  E-mail  : hubenchang0515@outlook.com
 */

#include "SSS_Sprite.h"

namespace sss2d{

// class AbstructSprite {
/* constructor */
AbstractSprite::AbstractSprite(AbstractScene* scene)
{
    this->scene_ = nullptr;
    scene->addSprite(this);
}

/* distructor */
AbstractSprite::~AbstractSprite()
{
    this->scene()->removeSprite(this);
}

/* remove this sprite from scene */
void AbstractSprite::remove()// final
{
    this->scene()->removeSprite(this);
}

/* get application */
Application* AbstractSprite::app()// final
{
    return this->scene_->app();
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
/* constructor */
AreaSprite::AreaSprite(AbstractScene* scene)
    : AbstractSprite(scene)
{
    
}

/* deal the event */
void AreaSprite::dealEvent(SDL_Event event)
{

}

/* sprite update */
void AreaSprite::update()
{

}

/* draw sprite */
void AreaSprite::draw()
{
    setDrawColor(this->renderer(),this->color_);
    fillArea(this->renderer(),this->area_);
}

/* return area */
Area AreaSprite::area()
{
    return this->area_;
}

/* set rectangle of AreaSprie */
void AreaSprite::setArea(Area area)
{
    this->area_ = area;
}

/* set rectangle of AreaSprite */
void AreaSprite::setArea(int x,int y,int w,int h)
{
    this->area_.x = x;
    this->area_.y = y;
    this->area_.w = w;
    this->area_.h = h;
}

/* set rectangle's color */
void AreaSprite::setColor(Color color)
{
    this->color_ = color;
}

/* set rectangle's color */
void AreaSprite::setColor(Uint8 r,Uint8 g,Uint8 b,Uint8 a)
{
    this->color_.r = r;
    this->color_.g = g;
    this->color_.b = b;
    this->color_.a = a;
}
// } class AreaSprite











// class TextSprite {
/* static member variable default font */
Font* TextSprite::defaultFont_ = nullptr;

/* static member function set default font*/
void TextSprite::setDefaultFont(std::string fontFile,size_t size)
{
	TTF_CloseFont(TextSprite::defaultFont_);
	TextSprite::defaultFont_ = TTF_OpenFont(fontFile.c_str(),size);
	
	if(TextSprite::defaultFont_ == nullptr)
	{
		TTF_THROW();
	}
}

/* constructor */
TextSprite::TextSprite(AbstractScene* scene)
	: AbstractSprite(scene)
{
    this->texture_ = nullptr;
    this->font_ = defaultFont_;  // default font
    this->position_ = { app()->width()/2 , app()->height()/2 }; // default position
    this->color_ = COLOR_WHITE; // default color is white
}

/* destructor */
TextSprite::~TextSprite()
{
    SDL_DestroyTexture(this->texture_);
    if(this->font_ != TextSprite::defaultFont_)
    {
        TTF_CloseFont(this->font_);
    }
}

/* deal event */
void TextSprite::dealEvent(SDL_Event event)
{

}

/* update sprite */
void TextSprite::update()
{

}

/* draw sprite */
void TextSprite::draw()
{
    if(this->texture_ != nullptr)
    {
    	//setDrawColor(this->renderer(),this->color_);
    	drawTexture(this->renderer(),this->texture_,this->position_);
	}
}

/* get area */
Area TextSprite::area()
{
    /* get width and height */
    int w,h;
	SDL_QueryTexture(this->texture_,NULL,NULL,&w,&h);

    Area area = {this->position_.x - w/2 , this->position_.y - h/2 , w , h};
    return area;
}

/* set font */
void TextSprite::setFont(std::string fontFile,size_t size)
{
    if(this->font_ != TextSprite::defaultFont_)
    {
        TTF_CloseFont(this->font_);
    }
    
    this->font_ = TTF_OpenFont(fontFile.c_str(),size);
    
    if(this->font_ == nullptr)
	{
		TTF_THROW();
	}
}

/* set text */
void TextSprite::setText(std::string text)
{
    this->wtext_.clear(); 
    this->text_  = text;
    SDL_DestroyTexture(this->texture_);
   
	Surface* surface = renderUTF8(this->font_,this->text_.c_str(),this->color_);
	
	this->texture_ = SDL_CreateTextureFromSurface(this->renderer(),surface);
	
	if(this->texture_ == NULL)
	{
	    SDL_THROW();
	}
	
	SDL_FreeSurface(surface);
}

/* set wide character text */
void TextSprite::setText(std::wstring wtext)
{
    this->text_.clear(); 
    this->wtext_  = wtext;
    
    SDL_DestroyTexture(this->texture_);
   
	Surface* surface = renderUTF16(this->font_,this->wtext_.c_str(),this->color_);
	
	this->texture_ = SDL_CreateTextureFromSurface(this->renderer(),surface);
	
	if(this->texture_ == NULL)
	{
	    SDL_THROW();
	}
	
	SDL_FreeSurface(surface);
}

/* set center point position */
void TextSprite::setPosition(Position center)
{
	this->position_ = center;
}

/* set center point position */
void TextSprite::setPosition(int x,int y)
{
    this->position_.x = x;
    this->position_.y = y;
}

/* set text color */
void TextSprite::setColor(Color color)
{
	this->color_ = color;
	SDL_DestroyTexture(this->texture_);
	
	Surface* surface = NULL;
	if(this->text_.empty())//wide string
	{
	    surface = renderUTF16(this->font_,this->wtext_.c_str(),this->color_);
	}
	else // string
	{
	    surface = renderUTF8(this->font_,this->text_.c_str(),this->color_);
	}
	
	this->texture_ = SDL_CreateTextureFromSurface(this->renderer(),surface);
	
	if(this->texture_ == NULL)
	{
	    SDL_THROW();
	}
	
	SDL_FreeSurface(surface);
}

/* set text color */
void TextSprite::setColor(Uint8 r,Uint8 g,Uint8 b,Uint8 a)
{
    this->color_.r = r;
    this->color_.g = g;
    this->color_.b = b;
    this->color_.a = a;
    
    SDL_DestroyTexture(this->texture_);
	Surface* surface = NULL;
	if(this->text_.empty())//wide string
	{
	    surface = renderUTF16(this->font_,this->wtext_.c_str(),this->color_);
	}
	else // string
	{
	    surface = renderUTF8(this->font_,this->text_.c_str(),this->color_);
	}
	
	this->texture_ = SDL_CreateTextureFromSurface(this->renderer(),surface);
	
	if(this->texture_ == NULL)
	{
	    SDL_THROW();
	}
	
	SDL_FreeSurface(surface);
}
// } class TextSprite








// class ImageSprite {
/* constructor */
ImageSprite::ImageSprite(AbstractScene* scene)
	: AbstractSprite(scene)
{
    this->texture_ = nullptr;
    this->position_ = { app()->width()/2 , app()->height()/2 }; // default position
}

/* destructor */
ImageSprite::~ImageSprite()
{
    SDL_DestroyTexture(this->texture_);
}

/* deal event */
void ImageSprite::dealEvent(SDL_Event event)
{

}

/* update sprite */
void ImageSprite::update()
{

}

/* draw sprite */
void ImageSprite::draw()
{
    if(this->texture_ != nullptr)
    {
    	//setDrawColor(this->renderer(),this->color_);
    	drawTexture(this->renderer(),this->texture_,this->position_);
	}
}

/* return area */
Area ImageSprite::ImageSprite::area()
{
    /* get width and height */
    int w,h;
	SDL_QueryTexture(this->texture_,NULL,NULL,&w,&h);

    Area area = {this->position_.x - w/2 , this->position_.y - h/2 , w , h};
    return area;
}

/* set image by file */
void ImageSprite::setImage(std::string file)
{
    Surface* surface = IMG_Load(file.c_str());
    if(surface == nullptr)
    {
        IMG_THROW();
    }
    
    this->texture_ = SDL_CreateTextureFromSurface(renderer(),surface);
    if(this->texture_ == nullptr)
    {
        SDL_THROW();
    }
    
    SDL_FreeSurface(surface);
}

/* set image by surface */
void ImageSprite::setImage(Surface* surface)
{
    this->texture_ = SDL_CreateTextureFromSurface(renderer(),surface);
    if(this->texture_ == nullptr)
    {
        SDL_THROW();
    }
}

/* set image by texture */
void ImageSprite::setImage(Texture* texture)
{
    this->texture_ = texture;
}

/* set position */
void ImageSprite::setPosition(Position position)
{
    this->position_ = position;
}

/* set position */
void ImageSprite::setPosition(int x,int y)
{
    this->position_.x = x;
    this->position_.y = y;
}
// } class ImageSprite





// class AnimeSprite {
/* constructor */
AnimeSprite::AnimeSprite(AbstractScene* scene)
	: AbstractSprite(scene)
{
    this->position_ = { app()->width()/2 , app()->height()/2 }; // default position
    this->interval_ = 200; // default 200ms
    this->current_ = this->images_.begin();
}

/* destructor */
AnimeSprite::~AnimeSprite()
{
    for(auto& image : this->images_)
    {
        SDL_DestroyTexture(image);
    }
}

/* deal event */
void AnimeSprite::dealEvent(SDL_Event event)
{

}

/* update sprite */
void AnimeSprite::update()
{
    if(this->images_.empty())
    {
        return;
    }
    
    static sss2d::time_t prev = SDL_GetTicks();
    sss2d::time_t curr = SDL_GetTicks();
    
    if(curr - prev > this->interval_) // millisecond passed
    {
        this->current_ ++;
        if(this->current_ == this->images_.end())
        {
            this->current_ = this->images_.begin();
        }
        prev = curr;
    }
}

/* draw sprite */
void AnimeSprite::draw()
{
    drawTexture(this->renderer(),*(this->current_),this->position_);
}

/* return area */
Area AnimeSprite::area()
{
    /* get width and height */
    int w,h;
	SDL_QueryTexture(*(this->current_),NULL,NULL,&w,&h);

    Area area = {this->position_.x - w/2 , this->position_.y - h/2 , w , h};
    return area;
}

/* clear all images */
void AnimeSprite::clearImages()
{
    for(auto& image : this->images_)
    {
        SDL_DestroyTexture(image);
    }
    this->images_.clear();
}

/* add image by file */
void AnimeSprite::addImage(std::string file)
{
    Surface* surface = IMG_Load(file.c_str());
    if(surface == nullptr)
    {
        IMG_THROW();
    }
    
    Texture* texture = SDL_CreateTextureFromSurface(renderer(),surface);
    if(texture == nullptr)
    {
        SDL_THROW();
    }
    
    SDL_FreeSurface(surface);
    
    this->images_.push_back(texture);
    this->current_ = this->images_.begin();
}

/* add image by surface */
void AnimeSprite::addImage(Surface* surface)
{
    Texture* texture = SDL_CreateTextureFromSurface(renderer(),surface);
    if(texture == nullptr)
    {
        SDL_THROW();
    }
    
    SDL_FreeSurface(surface);
    
    this->images_.push_back(texture);
    this->current_ = this->images_.begin();
}

/* add image by texture */
void AnimeSprite::addImage(Texture* texture)
{
    this->images_.push_back(texture);
    this->current_ = this->images_.begin();
}

/* set position */
void AnimeSprite::setPosition(Position position)
{
    this->position_ = position;
}

/* set position */
void AnimeSprite::setPosition(int x,int y)
{
    this->position_.x = x;
    this->position_.y = y;   
}

/* set interval */
void AnimeSprite::setInterval(sss2d::time_t ms)
{
    this->interval_ = ms;
}

// } class AnimeSprite
};// sss2d
