%Euler46
%{
what is the smallest odd composite number that can't be written as the sum of a prime and a square number?
e.g. 9 = 7 + 2×12
15 = 7 + 2×22
21 = 3 + 2×32
%}
%guessing it's below 10000
tic
limit = 10000;
P = primes(limit);
vec = 1:2:limit;
vec = vec(~ismember(vec,P)); %odd composite numbers.
vec(1) = [];
for i = vec
    Pnow = P(P < i);
    comp = sqrt((i - Pnow)./2);
    if ~any(mod(comp,1)==0)
        break;
    end
end
toc