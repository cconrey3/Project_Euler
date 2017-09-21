%Problem 42
%a triangle word is one st when the letters are converted to alphabetical
%order position (a=1, b=2, c=3...) the sum of the words is a triangle
%number.
%e.g. SKY is 19 + 11 + 25 = 55 = t10

%given a text file of words, find how many words are triangle words.
t = tic;
fh = fopen('euler42.txt');
line = fgetl(fh);
line(line == '"') = [];
words = {};
while ~isempty(line)
    [first line] = strtok(line,',');
    words = [words {first}];
end

n = 1:100;
tris = (n).*(n+1)./2;

count = 0;
for i = 1:length(words)
    word = words{i};
    word = word - 'A' + 1;
    val = sum(word);
    if ismember(val,tris)
        count = count+1;
    end
end
t = toc(t);

