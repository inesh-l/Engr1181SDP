clc
clear

%% Board Scene Without AI
sWidth = 63;
sHeight = 63;
zFactor = 5;
BGC = [0,0,255];
board_scene = simpleGameEngine("connect4_sprites.png", sWidth, sHeight, zFactor, BGC);
blank=1;
empty=2;
yellow=3;
red=4;
controls=5:11;
board=empty * ones(7,7);
board(1,:)=controls;
% Draw the board itself
drawScene(board_scene,board);
board()
% Drop a chip
turn = 3;
while true
    won = checkWin(board)
    if won == true
        break;
    end
    colSelect = getKeyboardInput(board_scene);
    colSelect = str2num(colSelect); 
    for i=7:-1:2
        if board(i,colSelect) == 2
            board(i,colSelect) = turn;
            drawScene(board_scene,board);
            break
        end
    end
    if turn ==3
        turn = 4;
    elseif turn == 4
            turn = 3;
    end
    
end




