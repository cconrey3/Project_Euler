%Problem 35
%how many circular primes are there below 1 000 000?
function [count,countVec,t] = Euler35
t = tic;
countVec = [];
for n = 1:2:999999
    if isprime(n)
        if iscircular(n)
            countVec = [countVec n];
        end
    end
end
count = length(countVec);
t = toc(t);
end
function bool = iscircular(n)
bool = true;
i = 2;
ns = num2str(n);
while bool && i <= length(ns)
    ns = [ns(2:end) ns(1)];
    bool = isprime(str2num(ns));
    i = i+1;
end
end