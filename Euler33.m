%Problem 33
%the fraction 49/98 = 4/8 looks like you can just cancel the nines as a
%quick trick. This isn't the case though in general. Find all the fractions
%of 2-digit numerators/denominators that have this quirk.

%brute-force. Go through all num/denom, find the fraction, then check if iseualth e
%second digit of num and first digit of denom and if so chop them, then see
%if that fraction matches original.

%final output should be the denominator of the most reduced fraction made
%by multiplying all fractions that follow this trick.

%skip 0s
%only check the 10 values that match the current numerator's ones place.
tic;
fracs = [];
for den = 11:99
    for num = 11:(den-1) %only considering when fraction is less than 1, skip all cases where num >= den.
        nums = num2str(num);
        dens = num2str(den);
        if nums(2) == dens(1)
            if num/den == str2num(nums(1))/str2num(dens(2))
                fracs = [fracs [str2num(nums(1));str2num(dens(2))]];
            end
        end
    end
end
frac = prod(fracs,2);
out = rat(frac(1)/frac(2));
toc; %around 0.28



                