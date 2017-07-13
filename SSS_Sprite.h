/*
 *  File    : SSS_Sprite.h
 *  Author  : Plan C
 *  Blog    : blog.kurukurumi.com
 *  E-mail  : hubenchang0515@outlook.com
 */
#ifndef SSS_SPRITE_H
#define SSS_SPRITE_H

#include <string>

#include "SSS_Base.h"
#include "SSS_Scene.h"

namespace sss2d{

/* Super Class of All Sprite */
class AbstractSprite
{
public:
    AbstractSprite(AbstractScene* scene = nullptr);

    virtual void dealEvent(SDL_Event event) = 0;
    virtual void update() = 0;
    virtual void draw() = 0;
    
    virtual AbstractScene* scene() final;
    virtual Renderer* renderer() final;

private:
    AbstractScene* const scene_;
    Renderer* renderer_;
};


/* Rectangle Color Lump Sprit */
class AreaSprite : public AbstractSprite
{
public:
    AreaSprite(AbstractScene* scene = nullptr);

    virtual void dealEvent(SDL_Event event);
    virtual void update();
    virtual void draw();
    
    void setArea(Area area);
    void setArea(int x,int y,int w,int h);
    void setColor(Color color);
    void setColor(Uint8 r,Uint8 g,Uint8 b,Uint8 a);

private:
    Area area_;
    Color color_;
};


/* Sprite of Text */
class TextSprite : public AbstractSprite
{
public:
	static void setFont(std::string file);
	static void setFontSize(size_t size);
	
	TextSprite(AbstractScene* scene  = nullptr);
	
	virtual void dealEvent(SDL_Event event);
	virtual void update();
	virtual void draw();
	
	void setText(std::string text);
	void setPosition(Position position);
	void setPosition(int x,int y);
	void setColor(Color color);
	void setColor(Uint8 r,Uint8 g,Uint8 b,Uint8 a);
	
private:
	Position position_;
	Color color_;
	Texture* texture_;
	std::string text_;
	
	static TTF_Font* font_;
	static std::string fontFile_;
	static size_t fontSize_;
};


};// namespace sss2d

#endif // SSS_SPRITE_H
