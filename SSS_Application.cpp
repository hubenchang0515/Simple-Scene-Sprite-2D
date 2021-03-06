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
    SDL_SetRenderDrawBlendMode(renderer(),SDL_BLENDMODE_BLEND);
    
    this->currentScene_ = nullptr;
    this->isWork_ = false;
    this->fpsLocked_ = true;
    
    fpsSem_ = SDL_CreateSemaphore(0);
    
}

/* destructor */
Application::~Application()
{
    SDL_DestroySemaphore(fpsSem_);
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
    SDL_CreateThread(eventThread,"Event Thread",this);
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
    
    while(this->isWork_)
    {
        /* start a timer to hold fps */
        SDL_TimerID fpsTimer = SDL_AddTimer(1000/this->fps_,fpsTimerCallback,(void*)this);
        
        /********* Draw *********/
        /* clear renderer */
        SDL_SetRenderTarget(this->renderer_,nullptr);       // target : window
        SDL_SetRenderDrawColor(this->renderer_,0,0,0,0); // color  : black
        SDL_RenderClear(this->renderer_);
        /* update and draw scene */
        if(this->currentScene_ != nullptr)
        {
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
        
        /* block to hold fps */
        if(SDL_SemWait(fpsSem_) != 0)
        {
            SDL_THROW();
        }
        SDL_RemoveTimer(fpsTimer);
        
        /* count real fps */
        this->realFps_ = 1000.0/(SDL_GetTicks() - ticks);
        ticks = SDL_GetTicks();
    }
}

/* static funtions */

/* FPS Timer Callback */
Uint32 Application::fpsTimerCallback(Uint32 interval,void* app)
{
    Application* self = static_cast<Application*>(app);
    SDL_SemPost(self->fpsSem_);
    return interval;
}

/* the thread poll event */
int Application::eventThread(void* app)
{
    Application* self = static_cast<Application*>(app);
    SDL_Event event;// used to poll event
    
    while(1)
    {
        /* wait SDL2 event */
        int e = SDL_WaitEvent(&event);
        /* exit while get quit event */
        if(event.type == SDL_QUIT)
        {
            self->exit();
            SDL_SemPost(self->fpsSem_);
            break;
        }
        else if(e != 0)
        {
            self->currentScene_->dealEvent(event);
        }
    }
    return 0;
}
};//sss2d
