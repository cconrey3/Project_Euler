%Euler38
%{
find the largest 1-9 pandigital number that is a concatenation of multiples
of another integer. e.g. 9,18,27,36,45 is a concatenation of 9*[1 2 3 4 5]
%}
%to maximize the largest pandigital that can be produced by multiplying an
%integer by [1,2,...,n] st n > 1, we know that there are already versions
%of this that lead with 9. (9*[1:5]) so we can assume that our integer
%starts with 9 in order to be greater than this example.

%if the integer were 2-digit, 9x * [1 2 3] would be 8-digit, 9x * [1:4]
%would be 11-digit.
%if the integer were 3-digit, 9xx*[1:2] would be 7-dig, 9xx*[1:3] wb 11.
%if 4-digit, 9xxx*[1:2] would be 9-digit! Any other combination breaks,
%so our fixed number is 4-digit leading with 9, n must be 2.
found = false; 
i = 9876;
while ~found && i > 9123
    str = [num2str(i),num2str(i*2)];
    if strcmp(sort(str),'123456789')
        found = true;
    end
    i = i-1;
end