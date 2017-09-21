function [bigProd strVals] = Euler8(inBigNum,lengthVals)
%this function taks in a long string of numbers,inBigNum and finds
%the sub string of length lengthVals with the greatest product.
global lengthV
lengthV = lengthVals;

current = inBigNum(1:lengthVals);
queue = inBigNum(lengthVals+1:end);

recordProd = {};
recordStr = {};

while ~isempty(queue)
    if any(current == '0')
        [current queue] = unZero(queue);
    else
        recordStr = [recordStr current];
        recordProd = [recordProd prodStr(current)];
        current(1) = [];
        current = [current queue(1)];
        queue(1) = [];
    end
end

vecProds = [];
for n = 1:length(recordProd)
    vecProds = [vecProds (recordProd{n})];
end

[bigProd loc] = max(vecProds);
strVals = recordStr{loc};
end

function out = prodStr(inStr)
vec = [];
for n = 1:length(inStr)
    vec = [vec str2double(inStr(n))];
end
out= prod(vec);
end

function [currentNew queue] = unZero(queue)
global lengthV
if length(queue) > lengthV
    currentNew = queue(1:lengthV);
    queue(1:lengthV) = [];
else
    currentNew = queue(1:end);
    queue = [];
end
end