function passcode = Euler79
fh = fopen('euler79.txt');
arr = '';
while ~feof(fh)
    arr = [arr;fgetl(fh)];
end
arr = num2str(unique(sort(str2num(arr))));

%I did the rest by hand, looking at 'arr' by this point.


end