/*
 *  File    : SSS_Scene.h
 *  Author  : Plan C
 *  Blog    : blog.kurukurumi.com
 *  E-mail  : hubenchang0515@outlook.com
 */
#ifndef SSS_SCENE_H
#define SSS_SCENE_H

#include <list>

#include "SSS_Base.h"
#include "SSS_Application.h"
#include "SSS_Sprite.h"

namespace sss2d{

class AbstractScene
{
    friend class AbstractSprite;
public:
    AbstractScene(Application* app);
    
    virtual bool dealEvent(SDL_Event event) = 0;
    virtual bool update() = 0;
    virtual bool draw() = 0;
    
    virtual Renderer* renderer() final;
    virtual Application* app() final;
    virtual void drawSprites() final;
    virtual void updateSprites() final;
    virtual void sendEvent(SDL_Event event) final;

private:
    Application* const          application_;
    std::list<AbstractSprite*>  sprites_; 
    
    virtual void addSprite(AbstractSprite* sprite) final;
    virtual void removeSprite(AbstractSprite* sprite) final;
};





class Scene : public AbstractScene
{
public:
    Scene(Application* app);
    ~Scene();
    
    bool dealEvent(SDL_Event event);
    bool update();
    bool draw();
    
    void setBackground(std::string file);
    void setBackground(Surface* surface);
    void setBackground(Texture* texture);
    
private:
    Texture* background_;
};





class WideScene : public AbstractScene
{
public:
    WideScene(int width,int height,Application* app);
    ~WideScene();
    
    bool dealEvent(SDL_Event event);
    bool update();
    bool draw();
    
    int width();
    int height();
    void setBackground(std::string file);
    void setBackground(Surface* surface);
    void setBackground(Texture* texture);
    void setFocus(Position focus);
    void setFocus(int x,int y);
    Position focus();
    
private:
    const int width_;
    const int height_;
    Position focus_;
    Area visiable_;
    Texture* background_;
    Texture* texture_;
};


};// namespace sss2d

#endif // SSS_SCENE_H
