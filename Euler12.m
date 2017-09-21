%project euler 12
%What is the value of the first triangle number to have over five hundred divisors?
t = tic;
tn = 1;
i = 2;
not_done = true;

while not_done
    numDivisors = 2;% assume that 1 and tn are divisors. Start at 2.
    for d = 2:sqrt(tn) %should check if sqrt(tn) is a divisor, then add 1, not 2, to numDivisors. Doesn't affect answer here.
        if mod(tn,d) == 0
            numDivisors = numDivisors+2;
        end
    end
    not_done = numDivisors <= 500;
    if not_done
           tn = tn+i;
            i = i+1;
    end
end
t = toc(t);