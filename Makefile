libsss2d.a : SSS_Application.o SSS_Scene.o SSS_Sprite.o
	ar rcs libsss2d.a SSS_Application.o SSS_Scene.o SSS_Sprite.o 
SSS_Application.o : SSS_Application.cpp SSS_Application.h SSS_Scene.h SSS_Sprite.h SSS_Base.h
	g++ -c SSS_Application.cpp -std=c++11 -fPIC

SSS_Scene.o : SSS_Scene.cpp SSS_Application.h SSS_Scene.h SSS_Sprite.h SSS_Base.h
	g++ -c SSS_Scene.cpp -std=c++11 -fPIC

SSS_Sprite.o : SSS_Sprite.cpp SSS_Application.h SSS_Scene.h SSS_Sprite.h SSS_Base.h
	g++ -c SSS_Sprite.cpp -std=c++11 -fPIC

clean:
	rm *.o	
	
install:
	mkdir /usr/include/sss2d
	cp *.h /usr/include/sss2d
	cp libsss2d.a /usr/local/lib
