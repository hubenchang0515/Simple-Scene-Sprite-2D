# Simple Scene Sprite 2D
SSS2D is a minimum game engine based on SDL2.In fact this is only a main loop.

## Install Dependent Library
```
sudo apt-get install libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev
```

## Install SSS2D
```
sudo make & make install
```

## Framework
* Application    
    * Scene   
        * Sprite  
        * Sprite  
    * Scene   
        * Sprite  
        * Sprite  

Application will call 'dealEvent','update','draw' of Scene,then Scene will call 'dealEvent','update','draw' of Sprite.

## Create Application Scene and Sprite
```
#include <sss2d/sss2d.h>

using namespace sss2d;

int main(int argc,char* argv[])
{
    Application app;

    Scene scene(&app);

    AreaSprite(&scene);

    app.setScene(&scene);
    app.start();
    return 0;
}
```

## Write a Sprite
Inherit 'AbstractSprite' then override methods 'dealEvent','update' and 'draw'.  
```
class MySprite : public AbstractSprite
{
public:
    void dealEvent(SDL_Event event);
    void update();
    void draw();
}
```

## Write a Scene
Inherit 'AbstractScene' then override methods 'dealEvent','update' and 'draw'.  

```
class MyScene : public AbstractScene
{
public:
    bool dealEvent(SDL_Event event);
    bool update();
    bool draw();
}
```