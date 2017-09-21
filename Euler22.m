%Problem22
%{
Name Scores:
given a text file of names, sort the names, then find the sum of the
letters of the name (a = 1, b = 2...) and multiply it by its sorted
position in the file.
%}
tic
fh = fopen('euler22.txt');
names = {};
line = fgetl(fh);
line(line == '"') = [];
[name,rest] = strtok(line,',');
while ~isempty(name)
    names = [names,{name}];
    [name,rest] = strtok(rest,',');
end
names = sort(names);
S = 0;
for i = 1:length(names)
    nums = sum(names{i} - 'A'+1);
    S = S + nums*i;
end
toc