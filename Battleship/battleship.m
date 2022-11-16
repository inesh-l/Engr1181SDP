clc
clear

%Initializing
sSize = 255;
zFactor = 5;
BGC = [167 177 183];

splashscreen = simpleGameEngine('CattleShip Splash.png',sSize,sSize,zFactor,BGC);

splashy = 1;

image_1 = splashy;
drawScene(splashscreen,splashy)

[click] = getKeyboardInput(splashscreen);
%if click == 


