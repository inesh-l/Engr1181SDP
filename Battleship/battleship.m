clc
clear

%Initializing
sSize = 255;
zFactor = 5;
BGC = [167 177 183];

%Loading Splashscreen
splashscreen = simpleGameEngine('CattleShip Splash.png',sSize,sSize,zFactor,BGC);

splashy = 1;

image_1 = splashy;
drawScene(splashscreen,splashy)

[click] = getKeyboardInput(splashscreen);

%Initialize Game

sSize = 63;
zFactor = 5;
BGC = [167 177 183];

%WARNING, sprite sheet not completed, game will not run
Game = simpleGameEngine('PlaceholderSheet',sSize,sSize,zFactor,BGC);

%Game Objects
blank_sprite = 1;
grass_sprite = 2;
cow_grass = 3;
hit_steak_sprite = 4;
dirt_sprite = 5;

%Creating the Board
board = grass_sprite*ones(10,21);






