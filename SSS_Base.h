/*
 *  File    : SSS_Base.h
 *  Version : alpha 0.1
 *  Date    : 2017-7-11
 *  Author  : Plan C
 *  Blog    : blog.kurukurumi.com
 *  E-mail  : hubenchang0515@outlook.com
 */

#ifndef SSS_BASE_H
#define SSS_BASE_H

#include <cstdint>
#include <cstddef>

#include <stdexcept>

#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <SDL2/SDL_ttf.h>


namespace sss2d{

typedef double          fps_t;
typedef SDL_Texture     Texture;
typedef SDL_Renderer    Renderer;
typedef SDL_Window      Window;
typedef SDL_mutex       Mutex;
typedef SDL_Point       Position;
typedef SDL_Rect        Area;
typedef SDL_Color       Color;


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

};// namespace sss2d

#endif // SSS_BASE_H
