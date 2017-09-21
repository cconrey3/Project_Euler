%Euler26
%{
reciprocal recurrance length
find the value of d < 1000 st 1/d has the longest recurring pattern in its
decimal.
%}
function [dbest,maxlen] = Euler26
maxlen = 0;
vec = primes(999);vec(vec == 2 | vec == 5) = [];
for d = 1:999
    str = char(vpa(sym(1/d),2000)); 
    str(1:2) = [];
    if length(str) > 10
        len = repeatLength(str);
        if len > maxlen
            maxlen = len;
            dbest = d;
        end
    end
end
end

function len = repeatLength(strIn)
repeatsYet = false;
len = 0;
while ~repeatsYet && length(strIn) >= 6
str = strIn(4:end);
bit = strIn(1:3);
    while ~repeatsYet && ~isempty(str) && length(bit) <= length(str)
        if all(bit == str(1:length(bit)))
            repeatsYet = true;
            len = length(bit);
        else
            bit(end+1) = str(1);str(1) = [];
        end
    end
    strIn(1) = [];
end
end


