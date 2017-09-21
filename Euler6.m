function sumSquareDiff = Euler6(k)
%square of sum - sum of square
squaresum = ((1+k).*.5.*k)^2;
sumsquare = (1/6).*k.*(k+1).*((2.*k)+1);
sumSquareDiff = squaresum - sumsquare;
end