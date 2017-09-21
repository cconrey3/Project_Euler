function sumPrimes = Euler10(upperBound)
list = 2;
n = 3;
while n < upperBound
    root = floor(n^(1/2));
    if all(mod(n,list(1:root))~=0)
        list = [list n];
    end
    n = n+2;
end
sumPrimes = sum(list);
end