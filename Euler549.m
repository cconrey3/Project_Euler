%Euler549
function out = Euler549
out = S(80);
end

function m = s(n)
%m is the smallest number st n divides m!
found = false;
m = 1;
while ~found
    m = m+1;
    found = mod(factorial(m),n) == 0;
end
end

function out = S(n)
out = 0;
for i = 2:n
    out = out+s(i);
end
end