clc
clear
close all
clear sound

%Initialize Music
yeehaw = 1;
background_music(yeehaw)

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

sSize_2 = 63;
zFactor_2 = 3;
BGC = [167 177 183];
main_game = simpleGameEngine('SpriteSheet.png',sSize_2,sSize_2,zFactor_2,BGC);

%Game Objects
cow_grass = 1;
grass_sprite = 2;
hidden_cow_green =3;
tall_grass = 4;
hidden_tall_green= 5;
dirt_sprite = 6;
hit_steak_sprite = 7;

%Call function to generate cow placements
turn= 15;
board_image2 = CS_Randomizer;

%Initialize Game Board
drawScene(main_game,board_image2)
title("Turns Remaining " + turn)

%Beginning Click to intialize matrix replacement
[r, c] = getMouseInput(main_game);

board_change = board_image2;

%Change placement of block
%If cow is found, it will appear for a brief second, and sound will play
MOO = 1;
score = 0;
while turn >0
if board_change(r,c) == 3
    board_change(r,c) = 1; 
    turn = turn-1;
    title("Turns Remaining " + turn)
    drawScene(main_game,board_change)
    sound_bite(MOO)
    pause(1)
    board_change(r,c) = 3;
    drawScene(main_game,board_change)
elseif board_change(r,c) == 5
    board_change(r,c) = 1;
    turn = turn-1;
    title("Turns Remaining " + turn)
    drawScene(main_game,board_change)
    sound_bite(MOO)
    pause(1)
    board_change(r,c) = 5;
    drawScene(main_game,board_change)
else 
    board_change(r,c) = 6;
    turn = turn - 1;
    title("Turns Remaining " + turn)
end 

drawScene(main_game,board_change)
[r, c] = getMouseInput(main_game);
end

%Similar, however a cow found in this block place a sizzle and turns into
%steak
sizzle = 2;
turn= 15;
score = 0;
while turn >0
if board_change(r,c) == 3
    board_change(r,c) = 1; 
    turn = turn-1;
    title("Turns Remaining " + turn)
    drawScene(main_game,board_change)
    sound_bite2(sizzle)
    pause(.2)
    board_change(r,c) = 7;
    drawScene(main_game,board_change)
    score= score+1;
elseif board_change(r,c) == 5
    board_change(r,c) = 1;
    drawScene(main_game,board_change)
    turn = turn-1;
    title("Turns Remaining " + turn)
    sound_bite2(sizzle)
    pause(.2)
    board_change(r,c) = 7;
    drawScene(main_game,board_change)
    score = score+1;
else 
    board_change(r,c) = 6;
    turn = turn-1;
    title("Turns Remaining " + turn)
end 

drawScene(main_game,board_change)
[r, c] = getMouseInput(main_game);
end
Transit = getMouseInput(main_game);


%Win Screen after 30 turns

sSize3 = 255;
zFactor3 = 5;
BGC = [167 177 183];

win_screen = simpleGameEngine('Win Screen.png',sSize3,sSize3,zFactor3,BGC);

win = 1;

drawScene(win_screen,win)
title("Your Score is " + score);

%Exit Game
ending = getMouseInput(win_screen);
while ending == 1
    clear sound
    close all
end 
        




