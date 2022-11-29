clc
clear

%Initializing
sSize = 255;
zFactor = 5;
BGC = [167 177 183];

%Loading Splashscreen
splashscreen = simpleGameEngine('CattleShip Splash.png',sSize,sSize,zFactor,BGC);

splashy = 1;

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
board = grass_sprite*ones(7,7);
drawscene(board,Game)

%Call function to generate cow placements
cow = CS_Randomizer;

% Gameplay loop

% Create dirt sprite if grass was hit (value of 0)

% Create steak sprite if cow was hit (value of 1)

%Win Screen when all cows hit (placeholder)
splashscreen = simpleGameEngine('WinScreen.png',sSize,sSize,zFactor,BGC);

win = 1;

drawscene(win,winscreen)




