%second attempt at euler43
%this works, but/and is a lot denser-looking. Shaves of about 15 seconds.
t = tic;
vec = perms('9876543210');
looper = [17 13 11 7 5 3 2;
          0  1  2  3 4 5 6];
for L = looper
    [r c] = size(vec);
    for i = 1:r
        n = str2num(vec(i,end-(L(2)+2):end - L(2)));
        if mod(n,L(1)) ~= 0
            vec(i,[8 9 10]-L(2)) = '000';
        end
    end
    ind = all([vec(:,8-L(2)) == '0'  vec(:,9-L(2)) == '0'  vec(:,10-L(2)) == '0'],2);
    vec(ind,:) = [];
end
final = sum(str2num(vec))
t = toc(t)
%final is 16695334890
% t is 120 seconds on laptop, 60 on desktop.