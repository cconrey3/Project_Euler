%Euler3_c
tic
vec = primes(sqrt(600851475143));
divs = mod(600851475143,vec);
divs = (vec((divs==0)));
out = max(divs(isprime(divs)));
toc

%This is amazingly better-looking, but about 40x slower.