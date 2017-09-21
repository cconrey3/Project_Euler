function [p t] = Euler3_b(int)
%{
this is a matlab transcription of euler's solution from overview003 for
speed comparison testing.

general method: start with big number, then from fact = 2,3,5,7,9...
(preferably primes list) start factoring out as many factors as you can.
divisible by a nubmer multiple times, while loop gets out all factors in
one go. main while stops after the sqrt of current reduced number, since
there can't be any primes above the sqrt besides the int itself.

ex:60
mod(60,2) -> 30 -> 15 %get out all factors of 2 at once.
mod(15,3) -> 5
mod(5,5) -> 1 !so biggest prime factor of 60 is 5.

[p t] = Euler3_b(600851475143)
%}
t = tic;
if mod(int,2) == 0
    lastfactor = 2;
    int = int/2;
    while mod(int,2) == 0
        int = int/2;
    end
else
    lastfactor = 1;
end
fact = 3;
maxf = floor(sqrt(int));
while int > 1 && fact < maxf
    if mod(int,fact) == 0
        lastfactor = fact;
        int = int/fact;
        while mod(int,fact) == 0
            int = int/fact;
        end
        maxf = floor(sqrt(int));
    end
    fact = fact+2; %add two to avoid even nubmers since we already got out all factors of 2.
end
if int == 1
    p = lastfactor;
else
    p = fact;
end    
t = toc(t);
end
%time comparison
%Euler3: 0.0058 on average
%Euler3bd: 0.00013 on average
%WOW, does make a difference.




