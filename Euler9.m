function [pythProd a b] = Euler9(sum)

squares = (1:sum).^2;
numPyth = 0;
for a = 1:sum
    for b = a+1:sum
        if any((a^2+b^2) == squares)
            numPyth = numPyth+1;
            c = (a^2+b^2)^.5;
            csquare = c^2;
            sumAttempt = (a + b + c);
            if isequal(sumAttempt,sum)
            break;
            end
        end
    end
    csquare = a^2+b^2;
    if any(csquare == squares) 
        if isequal((a + b + (a^2+b^2)^.5),sum)
        break;
        end
    end 
end
pythProd = a*b*((a^2+b^2)^.5);

end