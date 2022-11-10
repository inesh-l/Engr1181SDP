clc
clear


% Initialize scene
my_scene = simpleGameEngine('Battleship.png',84,84);

% Set up variables to name the various sprites
blank_sprite = 1;
water_sprite = 2;
left_ship_sprite = 3;
horiz_ship_sprite = 4;
right_ship_sprite = 5;
top_ship_sprite = 6;
vert_ship_sprite = 7;
bot_ship_sprite = 8;
hit_sprite = 9;
miss_sprite = 10;

% Display empty board   
board_display = water_sprite * ones(10,21);
board_display(:,11) = blank_sprite;
drawScene(my_scene,board_display)

% Place a ship
% Place the left pointing end of the ship at position (2,3)
board_display(2,3) = left_ship_sprite;
% Place the middle sections of the ship at positions (2,4-6)
board_display(2,4) = horiz_ship_sprite;
board_display(2,5) = horiz_ship_sprite;
board_display(2,6) = horiz_ship_sprite;
% Place the right pointing end of the ship at position (2,3)
board_display(2,7) = right_ship_sprite;

drawScene(my_scene,board_display)

% Set up hits and misses layer
hitmiss_display = blank_sprite * ones(10,21);

% Display miss for players shot at (5,5), note the +11 to shift the
% coordinates onto the right hand board
hitmiss_display(5,5+11) = miss_sprite;
% Display hit for the comuter's shot at (2,5)
hitmiss_display(2,5) = hit_sprite;
% Display hit for player's shot at (8,7)
hitmiss_display(8,7+11) = hit_sprite;

drawScene(my_scene,board_display,hitmiss_display)

