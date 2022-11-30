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

sSize_2 = 63;
zFactor_2 = 3;
BGC = [167 177 183];

%WARNING, sprite sheet not completed, game will not run
main_game = simpleGameEngine('SpriteSheet.png',sSize_2,sSize_2,zFactor_2,BGC);

%Game Objects
cow_grass = 1;
grass_sprite = 2;
hidden_cow_green =3;
tall_grass = 4;
hidden_tall_green= 5;
dirt_sprite = 6;
hit_steak_sprite = 7;

%Creating the Board
board_image = grass_sprite*ones(7,7);
drawScene(main_game,board_image)

%Call function to generate cow placements
board_image2 = CS_Randomizer;
drawScene(main_game,board_image2)

%Gameplay Loop


[r, c] = getMouseInput(main_game);

board_change = board_image2;

%Count for turns


%Change placement of block

turn= 15;
score = 0;
while turn >0
if board_change(r,c) == 3
    board_change(r,c) = 1; 
    drawScene(main_game,board_change)
    pause(2)
    board_change(r,c) = 3;
    drawScene(main_game,board_change)
    xlabel(turn)
elseif board_change(r,c) == 5
    board_change(r,c) = 1;
    drawScene(main_game,board_change)
    pause(2)
    board_change(r,c) = 5;
    drawScene(main_game,board_change)
    xlabel(turn)
else 
    board_change(r,c) = 6;
    xlabel(turn)
end 

drawScene(main_game,board_change)
[r, c] = getMouseInput(main_game);
 turn = turn-1;
end

turn= 15;
score = 0;
while turn >0
if board_change(r,c) == 3
    board_change(r,c) = 1; 
    drawScene(main_game,board_change)
    pause(.5)
    board_change(r,c) = 7;
    drawScene(main_game,board_change)
    score= score+1;
    xlabel(turn)
elseif board_change(r,c) == 5
    board_change(r,c) = 1;
    drawScene(main_game,board_change)
    pause(.5)
    board_change(r,c) = 7;
    drawScene(main_game,board_change)
    score = score+1;
    xlabel(turn)
else 
    board_change(r,c) = 6;
    xlabel(turn)
end 

drawScene(main_game,board_change)
[r, c] = getMouseInput(main_game);
 turn = turn-1;
end
getMouseInput(main_game)


%Win Screen when all cows hit (placeholder)
win_screen = simpleGameEngine('Win Screen.png',sSize,sSize,zFactor,BGC);

sSize = 255;
zFactor = 5;
BGC = [167 177 183];

win = 1;
xlabel('YOUR SCORE',score)
drawScene(winscreen,win)



        

%Gameplay main code, saving in case of deletion
% [r, c] = getMouseInput(main_game);
% 
% board_change = board_image2;
% 
% while board_change == board_image2
% if board_change(r,c) == 2
%     board_change(r,c) = 5; 
% else 
%     board_change(r,c) = 4;
% end
% drawScene(main_game,board_change)
% end


    



