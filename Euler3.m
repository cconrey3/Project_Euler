function [largestPrimeFactor t] = Euler3(int)
%Problem 3. What is the largest prime factor of 600851475143?
t = tic;
if checkPrime(int)
    largestPrimeFactor = int;
else
    for n = [2 (3:2:round(int^(1/2)))]
        if mod(int,n) == 0
            largestPrimeFactor = Euler3(int/n);
            break;
        end
    end
end
t = toc(t);
end

function out = checkPrime(n)
out = true;
for i = [2 (3:2:round(n^(1/2)))]
    if mod(n,i) == 0
        out = false;
        break;
    end
end
end