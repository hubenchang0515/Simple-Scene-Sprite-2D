# Simple-Scene-Sprite-2D
A fake ugly game engine based on SDL2
* Abandoned now

## Getting Start
### Install dependent library
```
sudo apt-get install libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev
```
### Install
```
make & make install
```
### demo.cpp
```C++
#include <sss2d/sss2d.h>

using namespace sss2d;

int main(int argc,char* argv[])
{
    /* Create Application and Scene */
    Application app;
    Scene scene(&app);
    app.setScene(&scene);
    
    /* Set default font and font size */
    TextSprite::setDefaultFont("wqy-zenhei.ttc",24);
    
    /* Create TextSprit */
    TextSprite red(&scene),green(&scene),blue(&scene),yellow(&scene),purple(&scene),cyan(&scene);
    
    /* Set text */
    red.setText("Simple Scene Sprite 2D");
    green.setText("Simple Scene Sprite 2D");
    blue.setText("Simple Scene Sprite 2D");
    yellow.setText("Simple Scene Sprite 2D");
    purple.setText("Simple Scene Sprite 2D");
    cyan.setText("Simple Scene Sprite 2D");
    
    /* Set color */
    red.setColor(COLOR_RED);
    green.setColor(COLOR_GREEN);
    blue.setColor(COLOR_BLUE);
    yellow.setColor(COLOR_YELLOW);
    purple.setColor(COLOR_PURPLE);
    cyan.setColor(COLOR_CYAN);
    
    /* Set position */
    red.setPosition(app.width()/2 , app.height()/7);
    green.setPosition(app.width()/2 , app.height()/7*2);
    blue.setPosition(app.width()/2 , app.height()/7*3);
    yellow.setPosition(app.width()/2 , app.height()/7*4);
    purple.setPosition(app.width()/2 , app.height()/7*5);
    cyan.setPosition(app.width()/2 , app.height()/7*6);
    
    /* Start application main loop */
    app.start();
    
    return 0;
}
```
### Compile
```
g++ -o demo demo.cpp -std=c++11 -lsss2d -lSDL2 -lSDL2_image -lSDL2_ttf
```
### Run
![image](https://github.com/hubenchang0515/Simple-Scene-Sprite-2D/blob/master/demo.png?raw=true)

## Class
* Application    
* AbstactScene  
* Scene  
* WideScene  
* AbstactSprite  
* AreaSprite  
* TextSprite  
* ImageSprite
* AnimeSprite

## Log
---
### 2017-7-15 : Alpha 0.5
Add WideScene which can move the visual angle by WideScene::setFocus(int x,int y)  
Adopt a new method to control FPS and deal event , slash occupancy factor of CPU.

#### New Class
* WideScene  

---
### 2017-7-15 : Alpha 0.4
Add ImageSprite to display image.  
Add AnimeSprite to display anime.  

#### New Class
* ImageSprite
* AnimeSprite

---
### 2017-7-14 : Alpha 0.3
Remove static function TextSprite::setFont  
Remove static function TextSprite::setSize  
Add static function TextSprite::setDefaultFont  
Add function TextSprite::setFont  

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
