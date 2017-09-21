%Problem 13
%Find the first 10 digits of the sum of the following 100 50-digit numbers (in
%euler.txt)

fh = fopen('euler13.txt');
arr = zeros(100,50);
i = 1;
while ~feof(fh)
    arr(i,:) = fgetl(fh);
    i = i+1;
end
arr =char(arr);

colsums = zeros(1,50);
for i = 1:50
    colsums(i) = sum(str2num(arr(:,i)));
end

digits = 0;
len = 0;
for i = 1:20 %all that's really necessary
    digits = digits*10 + colsums(i);
    len = length(num2str(digits));
end
%this is really imprecise, but it's enough to get 10 digits of precision.

    
    
    
    
    
    
