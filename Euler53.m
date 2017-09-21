%Euler 53
%t = 56.3 ms
function count = Euler53
tic
count = 0;
for n = 1:100
    for r = 1:n-1
        if nCr(n,r) > 1e6
            count = count+1;
        end
    end
end
toc
end
function C = nCr(n,r)
C = factorial(n)./(factorial(r).*factorial(n-r));
end