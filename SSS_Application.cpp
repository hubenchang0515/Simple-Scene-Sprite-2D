/*
 *  File    : SSS_Application.cpp
 *  Author  : Plan C
 *  Blog    : blog.kurukurumi.com
 *  E-mail  : hubenchang0515@outlook.com
 */
 
#include "SSS_Application.h"

/* simplify */
#define IMG_INIT_EVERYTHING (IMG_INIT_JPG | IMG_INIT_PNG | IMG_INIT_TIF)

namespace sss2d{

/* constructor */
Application::Application(std::string title,int width,int height)
{
    /* SDL Initializer */
    if(SDL_Init(SDL_INIT_EVERYTHING) != 0)
    {
        SDL_THROW();
    }
    /* SDL_image Initializer */
    if(IMG_Init(IMG_INIT_EVERYTHING) != IMG_INIT_EVERYTHING)
    {
        IMG_THROW();
    }
    /* SDL_ttf Initializer */
    if(TTF_Init() == -1)
    {
        TTF_THROW();
    }
    
    /* Create Window */
    this->window_ = SDL_CreateWindow(title.c_str(),SDL_WINDOWPOS_CENTERED,
                                SDL_WINDOWPOS_CENTERED,width,height,0);
    if(this->window_ == nullptr)
    {
        SDL_THROW();
    }
    
    this->renderer_ = SDL_CreateRenderer(this->window_,-1,SDL_RENDERER_ACCELERATED);
    if(this->renderer_ == nullptr)
    {
        this->renderer_ = SDL_CreateRenderer(this->window_,-1,0);
    }
    if(this->renderer_ == nullptr)
    {
        SDL_THROW();
    }
    
    this->currentScene_ = nullptr;
    this->isWork_ = false;
    this->fpsLocked_ = true;
}

/* destructor */
Application::~Application()
{
    SDL_DestroyRenderer(this->renderer_);
    SDL_DestroyWindow(this->window_);
    TTF_Quit();
    IMG_Quit();
    SDL_Quit();
}

/* start mainloop */
void Application::start(fps_t fps)
{
    this->isWork_ = true;
    this->fps_ = fps > 0 ? fps : 60;
    mainLoop();
}

/* exit mainloop */
void Application::exit()
{
    this->isWork_ = false;
}

/* add scene */
void Application::setScene(AbstractScene* scene)
{
    this->currentScene_ = scene;
}

/* mainloop */
void Application::mainLoop()
{
    Uint32 ticks = SDL_GetTicks(); // used to count real fps
    SDL_Event event;// used to poll event
    while(this->isWork_)
    {
        /* start a timer to hold fps */
        SDL_TimerID fpsTimer = SDL_AddTimer(1000/this->fps_,fpsTimerCallback,(void*)this);
        
        /********* Draw *********/
        /* clear renderer */
        SDL_SetRenderDrawColor(this->renderer_,0,0,0,0);
        SDL_RenderClear(this->renderer_);
        /* update and draw scene */
        if(this->currentScene_ != nullptr)
        {
            /* send event to scene */
            while(!this->events_.empty())
            {
                if(this->currentScene_->dealEvent(this->events_.front()) == false)
                {
                    throw std::runtime_error("Method 'dealEvent' of current scene false.\n");
                }
                this->events_.pop_front();
            }
            /* update scene */
            if(this->currentScene_->update() == false)
            {
                throw std::runtime_error("Method 'update' of current scene false.\n");
            }
            /* draw scene */
            if(this->currentScene_->draw() == false)
            {
                throw std::runtime_error("Method 'draw' of current scene false.\n");
            }
        }
        /* show */
        SDL_RenderPresent(renderer_);
        /************************/
        
        /* lock to hold fps */
        do{
            /* poll SDL2 event */
            int e = SDL_PollEvent(&event);
            /* exit while poll quit event */
            if(event.type == SDL_QUIT)
            {
                this->exit();
                break;
            }
            else if(e != 0)
            {
                this->events_.push_back(event);
            }
        }while(fpsLocked_);
        fpsLocked_ = true;
        SDL_RemoveTimer(fpsTimer);
        
        /* count real fps */
        this->realFps_ = 1000.0/(SDL_GetTicks() - ticks);
        ticks = SDL_GetTicks();
    }
}

/* FPS Timer Callback */
Uint32 Application::fpsTimerCallback(Uint32 interval,void* app)
{
    ((Application*)app)->fpsLocked_ = false;
    return interval;
}
};//sss2d
