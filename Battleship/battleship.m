clc
clear

%Initializing the Scene
%sSize = (48;24);
zFactor = 5;
BGC = [167 177 183];

my_scene = simpleGameEngine('watta.png',63,63,zFactor,BGC);

watta = 1;
watta_2 = 2;

image_one = watta*ones(7);
image_two(3:4, 3:4) = watta;
drawScene(my_scene,image_one);