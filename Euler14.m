%problem 14
%which natural number under 1 million produces the longest collatz chain?
function [out t] = Euler14
t = tic;
lengths = zeros(1,1000000);

for i = 1:1000000
    lengths(i) = collatz(i);
end
[mval out] = max(lengths);
t = toc(t);
%plot(1:length(lengths),lengths)
end


function len = collatz(n)
len = 0;
while (n > 1)
    if mod(n,2)==0
        n = n/2;
    elseif mod(n,2) ==1
        n = 3*n +1;
    end
    len = len+1;
end
end
