function [sizzle] = sound_bite2(sizzle)

[y,Fs] = audioread('sizzle.wav');
sound(y,Fs,16)


end