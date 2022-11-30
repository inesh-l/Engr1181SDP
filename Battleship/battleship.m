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
tall_grass  = 3;
dirt_sprite = 4;
hit_steak_sprite = 5;

%Creating the Board
board_image = grass_sprite*ones(7,7);
drawScene(main_game,board_image)

%Call function to generate cow placements
board_image2 = CS_Randomizer;
drawScene(main_game,board_image2)

%Gameplay()

[r, c] = getMouseInput(main_game);

board_change = board_image2;

while board_change == board_image2
if board_change(r,c) == 1
    board_change(r,c) = 5; 
else 
    board_change(r,c) = 4;
end
drawScene(main_game,board_change)
end


          % turn = 3;
% while true
%     colSelect = getKeyboardInput(board_scene);
%     colSelect = str2num(colSelect);
%     for i=7:-1:1
%         if board(i,colSelect) == 2
%             board(i,colSelect) = turn;
%             drawScene(board_scene,board);
%             break
%         end
%     end
%     if turn ==3
%         turn = 4;
%     elseif turn == 4
%             turn = 3;
%     end
% end


%Eventually gameplay loop, creating the change that happens on fire
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

% Gameplay loop

    

%Win Screen when all cows hit (placeholder)
% splashscreen = simpleGameEngine('WinScreen.png',sSize,sSize,zFactor,BGC);
% 
% win = 1;
% 
% drawScene(win,winscreen)




