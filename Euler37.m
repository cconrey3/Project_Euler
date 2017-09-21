%Problem 37
%find the sum of all primes that are left and right truncatable.
%i.e. 3797..379..37..3 are all prime,
%     3797..797..97..7 are all prime.
tprimes = []; %2,3,5,7 are not considered truncatable since they are 1-digit.
for i = 23:2:1000000 %number won't be odd, 1-digit, or start with a 1.
    ns = num2str(i);
    primesofar = isprime(i);
    if primesofar
        while primesofar && length(ns) > 1 %check primeness of the number, constantly truncating first digit each iteration
            ns = ns(2:end);
            primesofar = isprime(str2num(ns));
        end
        ns = num2str(i);
        while primesofar && length(ns) > 1 %checking primeness truncating last digit each iteration.
            ns = ns(1:end-1);
            primesofar = isprime(str2num(ns));
        end
        if primesofar   %if primesofar is still true by this point, then the number is LR-truncatably prime.
            tprimes = [tprimes i];
        end
    end
end