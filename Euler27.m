%Problem 27
%For y = n^2 + an + b, with |a| < 1000 and |b| < 1000 find a*b st y is prime for all
%n = 0:p, maximizing p.

%{
thoughts:
-general process will be a triple loop, checking through a, b < 1000 (or -1000 to 1000) and while isprime(y) n = n+1
-'b' has to be prime so that for n = 0, y is prime
- 'a' can be positive or negative
%}

%first, make a list of primes below 1000 for b.
primevec = [];
for i = 1:999
    if isprime(i)
        primevec(end+1) = i;
    end
end

maxbestsofar = [-inf -inf 0];
for a = -999:999
    for b = primevec
        n = 0;
        y = n^2 + a*n + b;
        while y >= 0 && isprime(y)
            n = n+1;
            y = n^2 + a*n + b;
        end
        if n > maxbestsofar(3)
            maxbestsofar = [a b n];
        end
    end
end

            



