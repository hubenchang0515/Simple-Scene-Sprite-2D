# Simple-Scene-Sprite-2D
A minimum game engine based on SDL2
* ALPHA version now , cannot work.

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
    
    /* Use static function to set font*/
    TextSprite::setFont("wqy-zenhei.ttc");
    TextSprite::setFontSize(24);
    
    TextSprite text(&scene);
    text.setText("Simple Scene Sprite 2D");
    text.setColor(0x00,0xff,0x00,0xff);
    text.setPosition(app.width()/2 , app.height()/2);
    app.start(60);
    
    
}
```
### Compile
```
g++ -o demo demo.cpp -lsss2d -std=c++11 -lsss2d -lSDL2 -lSDL2_image -lSDL2_ttf
```
### Run
![image](https://github.com/hubenchang0515/Simple-Scene-Sprite-2D/blob/master/demo.png?raw=true)

## Class
* Application    
* AbstactScene  
* Scene  
* AbstactSprite  
* AreaSprite  
* TextSprite  

## Log
---
### 2017-7-13 : Alpha 0.2
Add class TextSprile : Show text.  
Add function AbstractScene::updateSprites : Update all sprites belong to this scene.  
Add function AbstractScene::sendEvent : Send event to all sprites belong to this scene.  

#### New Class
* TextSprite

---
### 2017-7-12 : Alpha 0.1
Create Project  

#### New Class 
* Application    
* AbstactScene  
* Scene  
* AbstactSprite  
* AreaSprite  
---  