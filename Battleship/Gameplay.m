function GM = Gameplay(~)

%Function that will generate the turnbased gameplay

board_change = board_image2;

GM = ones(board_change);

while GM ~= 0
    [r, c] = getMouseInput(main_game);

while board_change == board_image2
if board_change(r,c) == 2
    board_change(r,c) = 5; 
else 
    board_change(r,c) = 4;
end
drawScene(main_game,board_change)
end 
    break
end
end