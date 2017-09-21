%Problem 21: Amicable numbers.
%{
find the sum of all amicable numbers below 1000
amicable numbers are pairs whose sum of proper divisors is equal to its
partner.
e.g. for d(n) = sum of divisors of n,
d(220) =  1 + 2 + 4 + 5 + 10 + 11 + 20 + 22 + 44 + 55 + 110; therefore d(220) = 284. 
coincidentally, d(284) = 220; therefore 220 and 284 form an amicable pair,
and are each called amicable numbers.
%}
function S = Euler21
tic
S = 0;
vec = 1:9999;
while ~isempty(vec)
    n = vec(1);
    dn = d(n);
    if n~= dn && n == d(dn) %if is amicable, and not with itself.
        S = S+n + dn;
        vec(vec==n|vec==dn) = [];
    else
        vec(1) = [];    
    end
end
toc
end

function val = d(n)
vec = 1:sqrt(n);
vec = vec(mod(n,vec)==0);
vec = [vec,n./vec(2:end)];
val = sum(vec);
end