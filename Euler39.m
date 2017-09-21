%Euler39
%Pythagorean triples: Find the perimeter that has the most associated
%pythagorean triples.
%e.g. p = 120 has three: {20,48,52}; {24,45,51}; {30,40,50}.


tic
limit = 1000;
pairs = [];
for a = 1:limit
    for b = 1:a
        cs = a^2+b^2;
        c= sqrt(cs);
        if c == floor(c);
            pairs = [pairs;[a b c]];
        end
    end
end
perims = sum(pairs,2);
perims(perims > 1000) = NaN;
out = mode(perims)
toc % 31 ms


% tic 
% limit = 10000;
% a = 1:limit;
% a = a(ones(1,limit),:); %each row is the same.
% b = a';                 % each column is the same. Overlaying a and b produces a coordinate system of a and b values.
% c = sqrt(a.^2+b.^2);
% c(c~=floor(c)) = NaN;
% perims = a+b+c;
% clear a b c        %adding this line in reduced time from 25s to about 8 s. Memory usage never gets above 5 GB.
% out = mode(perims(:))
% toc
% %25 s on some runs.

%funny enough, this takes longer than nested for loops. either because my
%comp is having memory issues(when this runs, 7+GB out of 8 are used) or
%because twice the necessary data is held in bery large arrays.
