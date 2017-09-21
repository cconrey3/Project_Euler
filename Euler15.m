% tic
% gridsize = 20;
% arr = [0,ones(1,gridsize)];
% while ~all(size(arr) == [gridsize+1,gridsize+1])
%     vec = [1 zeros(1,gridsize)];
%     for i = 2:gridsize + 1;
%         vec(i) = vec(i-1) + arr(end,i);
%     end
%     arr = [arr;vec];
% end
% final = arr(gridsize+1,gridsize+1)
% toc

tic
gridsize = 20;
arr = zeros(gridsize+1,gridsize+1);
arr(1,:) = [0,ones(1,gridsize)];
arr(:,1) = [0,ones(1,gridsize)];
for i = 2:gridsize+1
    for j = 2:gridsize+1
        arr(i,j) = arr(i-1,j)+arr(i,j-1);        
    end
end
final = arr(end,end)
toc
