SetCompiler("clang++")
SetFlags(" -O2 -W -Wall -fPIC -std=c++11 ")

AddLib("SDL2")
AddLib("SDL2_image")
AddLib("SDL2_ttf")

AddFile("SSS_Application.cpp")
AddFile("SSS_Scene.cpp")
AddFile("SSS_Sprite.cpp")

obj = "SSS_Application.o SSS_Scene.o SSS_Sprite.o"

SetTarget(TARGET.A,"sss2d.a",obj)
