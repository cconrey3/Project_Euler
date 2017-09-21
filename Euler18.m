function arr = Euler18
tic
arr = euler18Setup;

rows = length(arr);
for r = rows-1:-1:1
    t1 = arr(r,1:r) + arr(r+1,1:r);
    t2 = arr(r,1:r) + arr(r+1,2:r+1);
    t = max([t1;t2]);
    arr = arr(1:r,1:r);
    arr(r,:) = t;
end
toc
end

function arr = euler18Setup
%arr = [3 0 0 0;7 4 0 0;2 4 6 0; 8 5 9 3];
%f = 'euler18.txt';
f = 'euler67.txt';
fh = fopen(f);
arr = [];
while ~feof(fh)
    line = fgetl(fh);
    arr = [arr zeros(length(arr),1);str2num(line)];
end
end
