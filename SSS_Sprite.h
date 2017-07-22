/*
 *  File    : SSS_Sprite.h
 *  Author  : Plan C
 *  Blog    : blog.kurukurumi.com
 *  E-mail  : hubenchang0515@outlook.com
 */
#ifndef SSS_SPRITE_H
#define SSS_SPRITE_H

#include <string>
#include <list>

#include "SSS_Base.h"
#include "SSS_Scene.h"

namespace sss2d{

/* Super Class of All Sprite */
class AbstractSprite
{
    friend class AbstractScene;
public:
    AbstractSprite(AbstractScene* scene);
    ~AbstractSprite();

    virtual void dealEvent(SDL_Event event) = 0;
    virtual void update() = 0;
    virtual void draw() = 0;
    
    virtual void remove() final;
    virtual Application* app() final;
    virtual AbstractScene* scene() final;
    virtual Renderer* renderer() final;

private:
    AbstractScene* scene_;
    Renderer* renderer_;
};





/* Rectangle Color Lump Sprit */
class AreaSprite : public AbstractSprite
{
public:
    AreaSprite(AbstractScene* scene);

    virtual void dealEvent(SDL_Event event);
    virtual void update();
    virtual void draw();
    
    Area area();
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
	static void setDefaultFont(std::string fontFile,size_t size);
	
	TextSprite(AbstractScene* scene);
	~TextSprite();
	
	virtual void dealEvent(SDL_Event event);
	virtual void update();
	virtual void draw();
	
	Area area();
	Position position();
	void setFont(std::string fontFile,size_t size);
	void setText(std::string text);
	void setText(std::wstring wtext);
	void setPosition(Position position);
	void setPosition(int x,int y);
	void setColor(Color color);
	void setColor(Uint8 r,Uint8 g,Uint8 b,Uint8 a = 0xff);
	
private:
	Position position_;
	Font* font_;
	Color color_;
	Texture* texture_;
	std::string text_;
	std::wstring wtext_;
	
	static Font* defaultFont_;
};





/* ImageSprite */  
class ImageSprite : public AbstractSprite
{
public:
    ImageSprite(AbstractScene* scene);
    ~ImageSprite();
    
    virtual void dealEvent(SDL_Event event);
	virtual void update();
	virtual void draw();
    
    Area area();
	Position position();
    void setImage(std::string file);
    void setImage(Surface* surface);
    void setImage(Texture* texture);
    void setPosition(Position position);
    void setPosition(int x,int y);
    
private:
    Position position_;
    Texture* texture_;
};




class AnimeSprite : public AbstractSprite
{
public:
    AnimeSprite(AbstractScene* scene);
    ~AnimeSprite();

    virtual void dealEvent(SDL_Event event);
	virtual void update();
	virtual void draw();
	
	Area area();
	Position position();
	void clearImages();
	void addImage(std::string file);
    void addImage(Surface* surface);
    void addImage(Texture* texture);
    void setPosition(Position position);
    void setPosition(int x,int y);
    void setInterval(sss2d::time_t ms);
	
private:
    Position position_;
    std::list<Texture*> images_;
    std::list<Texture*>::iterator current_;
    sss2d::time_t interval_;
    sss2d::time_t prev,curr;
};


};// namespace sss2d



#endif // SSS_SPRITE_H
