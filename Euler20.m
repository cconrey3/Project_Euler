%Euler20
%find the sum of the digits of 100!
tic
val = sym(100);
str = char(factorial(val));
vec = ' '*ones(1,length(str)*2);
vec(1:2:end) = str;
vec = str2num(char(vec));
out = sum(vec)
toc
