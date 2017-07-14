/*
 *  File    : SSS_Base.h
 *  Author  : Plan C
 *  Blog    : blog.kurukurumi.com
 *  E-mail  : hubenchang0515@outlook.com
 */

#ifndef SSS_BASE_H
#define SSS_BASE_H

#include <cstdint>
#include <cstddef>

#include <memory>
#include <stdexcept>

#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <SDL2/SDL_ttf.h>

#define SDL_THROW() (throw std::runtime_error(SDL_GetError()))
#define IMG_THROW() (throw std::runtime_error(IMG_GetError()))
#define TTF_THROW() (throw std::runtime_error(TTF_GetError()))

namespace sss2d{

typedef double          fps_t;
typedef SDL_Surface	    Surface;
typedef SDL_Texture     Texture;
typedef SDL_Renderer    Renderer;
typedef SDL_Window      Window;
typedef SDL_mutex       Mutex;
typedef SDL_Point       Position;
typedef SDL_Rect        Area;
typedef SDL_Color       Color;
typedef TTF_Font        Font;

const Color COLOR_RED    =  {0xff,0x00,0x00,0xff};
const Color COLOR_GREEN  =  {0x00,0xff,0x00,0xff};
const Color COLOR_BLUE   =  {0x00,0x00,0xff,0xff};
const Color COLOR_YELLOW =  {0xff,0xff,0x00,0xff};
const Color COLOR_PURPLE =  {0xff,0x00,0xff,0xff};
const Color COLOR_CYAN   =  {0x00,0xff,0xff,0xff};
const Color COLOR_WHITE  =  {0x00,0xff,0xff,0xff};
const Color COLOR_BLACK  =  {0x00,0xff,0xff,0xff};

class Application;
class AbstractScene;
class AbstractSprite;

inline void setDrawColor(Renderer* renderer,Color color)
{
    SDL_SetRenderDrawColor(renderer,color.r,color.g,color.b,color.a);
}

inline void fillArea(Renderer* renderer,Area area)
{
    SDL_RenderFillRect(renderer,&area);
}

inline void drawTexture(Renderer* renderer,Texture* texture,Position center)
{
	int w,h;
	SDL_QueryTexture(texture,NULL,NULL,&w,&h);
	Area area = {center.x - w/2, center.y - h/2, w, h};
	SDL_RenderCopy(renderer,texture,NULL,&area);
}

inline Surface* renderUTF8(Font* font,std::string text,Color color)
{
    if(font == NULL)
    {
        throw std::runtime_error("Font is nullptr.\n");
    }
    return TTF_RenderUTF8_Blended(font,text.c_str(),color);
}

inline Surface* renderUTF16(Font* font,std::wstring text,Color color)
{
    if(font == NULL)
    {
        throw std::runtime_error("Font is nullptr.\n");
    }
    return TTF_RenderUNICODE_Blended(font,(Uint16*)text.c_str(),color);
}

};// namespace sss2d

#endif // SSS_BASE_H
