# Simple-Scene-Sprite-2D
A minimum game engine based on SDL2

## Getting Start
### Install dependent library
```
sudo apt-get install libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev
```
### Make
```
make & make install
```
### demo.cpp
```
#include <sss2d/sss2d.h>

using namespace sss2d;

int main()
{
    Application app;
    Scene scene(&app);
    app.setScene(&scene);
    AreaSprite rSprite(&scene);
    rSprite.setArea({app.width()/2 -100,app.height()/2 -100,200,200});
    rSprite.setColor({0xff,0,0,0xff});
    AreaSprite gSprite(&scene);
    gSprite.setArea({app.width()/2 -70,app.height()/2 -70,140,140});
    gSprite.setColor({0,0xff,0,0xff});
    AreaSprite bSprite(&scene);   
    bSprite.setArea({app.width()/2 -50,app.height()/2 -50,100,100});
    bSprite.setColor({0,0,0xff,0xff});
    app.start();
}
```
### Compile
```
g++ -o demo demo.cpp -lsss2d -std=c++11 -lsss2d -lSDL2 -lSDL2_image -lSDL2_ttf
```
### Run
![image](https://github.com/hubenchang0515/Simple-Scene-Sprite-2D/blob/master/demo.png?raw=true)

## Log
### 2017-7-12 : Create Project  
* Add File : SSS_Base.h
* Add File : SSS_Application.h  
* Add File : SSS_Scene.h
* Add File : SSS_Sprite.h
* Add File : SSS_Application.cpp  
* Add File : SSS_Scene.cpp
* Add File : SSS_Sprite.cpp
* Add File : sss2d.h