%Problem 28
%find the sums of the corners of the 1001x1001 spiral.
%5x5 is
%{
21 22 23 24 25
20  7  8  9 10
19  6  1  2 11
18  5  4  3 12
17 16 15 14 13

and the sum is 101.
%}
t = tic;
sum = 1;
a1 = 1;
for layer = 2:ceil(1001/2) %width of square is half the number of layers.
    for corner = 1:4
        a1 = a1+2*(layer-1);
        sum = sum+a1;
    end
end
t = toc(t);
        
        
        
        
        