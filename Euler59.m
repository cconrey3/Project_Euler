function [outStr, count] = Euler59(varargin)
%the answer of this got spoiled for me, so I knew to use 'god'.
%to check for possibile keys, go through all 3-digit combs of lowercase
%letters, use as keys, and if the solution has a non-alphanumeric
%character, we know it can't be in that position.
if length(varargin) == 1
    testKey = varargin{1};
elseif isempty(varargin);
    testKey = 'god';
else
    error('format');
end

fh = fopen('euler59.txt');
line = fgetl(fh);
line(line == ',') = ' ';
bin = dec2bin(str2num(line)')-'0'; clear line
binLength = length(bin);
code = [repmat(testKey,1,floor(binLength/3)) testKey(1:mod(binLength,3))];
code = dec2bin(code')-'0';
xord = char(xor(bin,code)+'0');
outStr = char(bin2dec(xord)');
count = sum(outStr);
fclose(fh);
end