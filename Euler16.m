%problem 16
%what is the sum of the digits of 2^1000?
%note, need to do real math here, can't use strings bc of 'E+101'
val = 2^1000;

fh = fopen('euler16.txt');
line = fgetl(fh);
line(line == ' ') = [];
ph = ' '*ones(1,2*length(line));
ph(1:2:end) = line;
ph = str2num(char(ph));
s = sum(ph)
