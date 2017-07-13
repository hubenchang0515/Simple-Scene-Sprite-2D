/*
 *  File    : SSS_Application.h
 *  Author  : Plan C
 *  Blog    : blog.kurukurumi.com
 *  E-mail  : hubenchang0515@outlook.com
 */
 
#ifndef SSS_APPLICATION_H
#define SSS_APPLICATION_H



#include "SSS_Base.h"
#include "SSS_Scene.h"
#include <string>
#include <deque>

namespace sss2d{

class Application
{
public:
    Application(std::string title="Simple Scene Sprite 2D",int width=640,int height=480);
    ~Application();
    void start(fps_t fps=60);
    void exit();
    void setScene(AbstractScene* scene);
    
    /* get width of window */
    int width()  
    {
        int w; 
        SDL_GetWindowSize(this->window_,&w,NULL);
        return w; 
    }
    
    /* get height of window */
    int height() 
    {
        int h; 
        SDL_GetWindowSize(this->window_,NULL,&h); 
        return h; 
    }
    
    /* get window */
    Window* window()
    {
        return window_; 
    }
    
    /* get renderer */
    Renderer* renderer()
    { 
        return renderer_; 
    }
    
    /* set fps */
    void setFps(fps_t fps=60)
    { 
        this->fps_ = fps > 0 ? fps : 60; 
    }
    
    /* get real fps */
    fps_t realFps()
    {
        return realFps_; 
    }

private:
    Window*         window_;
    Renderer*       renderer_;
    bool            fpsLocked_;
    AbstractScene*  currentScene_;  
    bool            isWork_;
    fps_t           fps_;
    fps_t           realFps_;
    
    std::deque<SDL_Event>       events_;
    
    void mainLoop();
    
    static Uint32 fpsTimerCallback(Uint32 interval,void* mutex);

};

};// namespace sss2d

#endif // SSS_APPLICATION_H
