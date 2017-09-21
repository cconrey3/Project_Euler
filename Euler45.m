%Euler45
%find the first triangular number after T(285) = 40755 that is also
%pentagonal and hexagonal.

% function [k,Tk] = Euler49
% tic
% found = false;
% k = 287; %first possible value after 285.
% while ~found
%     found = isPent(T(k));
%     k = k+2;
% end
% Tk = T(k-2);
% toc %3.1 ms
% end


function [k tk] = Euler49
tic
k = 287:2:60000;
found = isPent(T(k));
k = k(find(found));
tk = T(k);
toc  %0.0009 = 0.963 ms
end


function t = T(k)
t = k.*(k+1)/2;
end

function bool = isPent(Pn)
%{
by solving the expression Pn = (3n^2-n)/2 for n using the quadratic
%formula, we find that 
%n = 1+/- sqrt(1+24Pn)/6
%so if n = 1+sqrt(1+24Pn)/6 is integral, then so are the values of n, and so Pn
%has an integer index in the pentagonal series.
%}
n = (1+sqrt(1+24*Pn))/6;
    bool = n == floor(n);
end