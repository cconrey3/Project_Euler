%Euler40
%{
Champernowne's constant
in the sequence 0. 123456789101112131415161718...
 find the first digit (d1) times the tenth (d10)
d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000 (1e6)
%}
tic
dig = 1:200000;
digs = num2str(dig);
digs(digs==' ') = [];
vec = digs(10.^(0:6));
f = ' '*ones(1,2*length(vec));
f(1:2:end) = vec;
fvec = str2num(char(f));
final = prod(fvec);
toc