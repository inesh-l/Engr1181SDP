function [MOO] = sound_bite(MOO)

[y,Fs] = audioread('MOO.wav');
sound(y,Fs,16 ...
    )


end