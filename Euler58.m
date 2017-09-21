%Euler58: Spiral Primes
%bottom right is always composite, always an odd square.
% 5  4  3
% 6  1  2
% 7  8  9
%2 layers, l = 2
%side length s = 3.
%s = l*2+1;

%to top right, n = 4*l^2 - 10*l + 7;
%to top left, n = 4*l^2 + 1;
%to bottom right, n = 4*l^2 - 6*l +3;

l = 1;
num = 1;
primesFound = 0;
found = false;
while ~found
   l = l+1; %adding new layer.
   vec =  [4*l^2-10*l+7, 4*(l-1)^2+1, 4*l^2-6*l+3];
   num = num + 4; %four new elements in list with each new layer.
   primesFound = primesFound + sum(isprime(vec));
   ratio = primesFound/num;
   found = ratio < 1/10; %ratio of primes on diagonal / total numbers along diagonal.
end

s = 2*l-1
