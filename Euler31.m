function num = Euler31(ChangeLeft)
%with 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p), 
%how many ways are there to make  £2?
ref = [1 2 5 10 20 50 100 200];
arr = zeros(200,8);
arr(1,:) = ones(1,8);
arr(:,1) = ones(200,1);
for i = 2:200
    for j = 2:8
        if i >= ref(j) %this is like trying to make 9 pence using 10 pence coins
            if i == ref(j) %would mod to 0th row.
                arr(i,j) = arr(i,j-1) + arr(i-ref(j)+1,j);
            else
                arr(i,j) = arr(i,j-1) + arr(i-ref(j),j);
            end
        else
            arr(i,j) = arr(i,j-1);
        end
    end
end
num = arr(end,end);
end