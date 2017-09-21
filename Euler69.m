% Euler69

%Totient Maximum.
%for n >= 1 000 000, find n such that n/phi(n) is maximum, where phi(n) is
%the number of numbers less than n that are relatively prime to n.
function out = Euler69
lim = 1e6;
vec = cell(1,lim);
for i = 1:lim
    vec{i} = factor(i);
end
end


function phi = phi(n)
if isprime(n)
    phi = n-1;
elseif 

end