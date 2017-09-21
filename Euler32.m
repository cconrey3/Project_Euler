%Problem 32
%Find all 1 to 9 pandigital sets of multiplier, multiplicand and product
%e.g. 39 × 186 = 7254 is a 1 to 9 pandigital set of operators and product.

%{
thoughts
It seems like there should be a lot of ways to cuts down which sets are
checked, but that seems rough and like a lot of checking, so I'll have to
be careful with that.

9321*8765 = 81698565 -> 4+4+8 is above 9, and 1*2345 = 2345 -> 1+4+4 = 9 so
4-digit numbers are plausible.

94321*8765 = blah is way abover threshold
1*23456 = 23456 (smallest possible including a 5-digit no. is 1+5+5=11 so
none of the multiplicands can be 5-digit

%}
tic
matches = {};
for i = 1:1000 %must be better ways to cut this down
    for j = 1:min([i,100])
        str = num2str([i,j,i*j]);str=str(str~=' ');
        if length(str) == 9
            if sort(str) == '123456789'
                matches = [matches;{i,j,i*j}];
            end
        end
    end
end

for i = 1001:9876 %must be better ways to cut this down
    for j = 1:10
        str = num2str([i,j,i*j]);str=str(str~=' ');
        if length(str) == 9
            if sort(str) == '123456789'
                matches = [matches;{i,j,i*j}];
            end
        end
    end
end
vec = [matches{:,3}]
out = sum(unique(vec))
toc
        