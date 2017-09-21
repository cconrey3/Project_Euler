N=20; M=20;
vec = zeros(M,N);
fh = fopen('euler11.txt');
i = 1;
while ~feof(fh)
   line = fgetl(fh);
   vec(i,:) = str2num(line);
    i = i+1;
end
%Done getting matrix from text file
maxsofar = 0;
%Check all downs
for j = 1:N
    for i = 1:(M-3)
        testprod = prod(vec(i:i+3,j));
        if (testprod > maxsofar)
            maxsofar = testprod;
        end
    end
end

%Check LR
for i = 1:M
    for j = 1:N-3
         testprod = prod(vec(i,j:j+3));
         if (testprod > maxsofar)
             maxsofar = testprod;
         end
    end
end

%check diags, top-left to bot-right
for i = 1:M-3
    for j = 1:N-3
        testprod = prod([vec(i,j),vec(i+1,j+1),vec(i+2,j+2),vec(i+3,j+3)]);
        if (testprod > maxsofar)
            maxsofar = testprod;
        end
    end
end

%top-right to bot-left
for i = 1:M-3
    for j = 4:N
        testprod = prod([vec(i,j),vec(i+1,j-1),vec(i+2,j-2),vec(i+3,j-3)]);
        if (testprod>maxsofar)
            maxsofar = testprod;
        end
    end
end
disp('Done')






