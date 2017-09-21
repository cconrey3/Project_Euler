%problem 43
%find the sum of all pandigital numbers with the property similar to the
%following.
%{
1406357289

d2d3d4=406 is divisible by 2
d3d4d5=063 is divisible by 3
d4d5d6=635 is divisible by 5
d5d6d7=357 is divisible by 7
d6d7d8=572 is divisible by 11
d7d8d9=728 is divisible by 13
d8d9d10=289 is divisible by 17
%}

t = tic;
%list of all divisibility groups%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ls17 = 17:17:987;
ls7 = 14:7:987;
ls2 = 10:2:987;

for i = 1:length(ls17)
    if length(num2str(ls17(i))) ~= length(unique(num2str(ls17(i))))
        ls17(i) = 0;
    end
end
ls17(ls17 == 0) = [];
       
for i = 1:length(ls7)
    if length(num2str(ls7(i))) ~= length(unique(num2str(ls7(i))))
        ls7(i) = 0;
    end
end
ls7(ls7 == 0) = [];

for i = 1:length(ls2)
    if length(num2str(ls2(i))) ~= length(unique(num2str(ls2(i))))
        ls2(i) = 0;
    end
end
ls2(ls2 == 0) = [];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%format lists
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ls17 = num2str(ls17(:)); ls17(ls17 == ' ') = '0'; %this makes the lists Mx3 char arrays
ls7 = num2str(ls7(:)); ls7(ls7 == ' ') = '0'; %with 0s as leading placeholders
ls2 = num2str(ls2(:)); ls2(ls2 == ' ') = '0';
%this is the best formatting to make sure that cases like
%1 978 645 032 would get checked.
%          ^  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Huge Horrendous Search Loop
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
foundVec = [];
for L1 = 1:9
    for L2 = 1:length(ls2)
        if ~any(ismember(num2str(L1),ls2(L2,:)))
            for L7 = 1:length(ls7)
                if ~any(ismember([num2str(L1) ls2(L2,:)],ls7(L7,:)))
                    for L17 = 1:length(ls17)
                        if ~any(ismember([num2str(L1) ls2(L2,:) ls7(L7,:)],ls17(L17,:)))
                            testing =[num2str(L1) ls2(L2,:) ls7(L7,:) ls17(L17,:)];
                            testing(testing == ' ') = [];
                            if length(testing) == 10 && length(unique(testing))==10 %if this is trure, then pandigital
                                %fprintf('%s is pandigital \n',testing);
                                %now that it's pandigital, and 2,7, and 17 work
                                %need to check 3, 5, 11, 13
                                if mod(str2num(testing(3:5)),3) == 0
                                    if mod(str2num(testing(4:6)),5) == 0
                                        if mod(str2num(testing(6:8)),11) == 0
                                            if mod(str2num(testing(7:9)),13) == 0
                                                %fprintf('     %s totally works! \n',testing);
                                                foundVec = [foundVec str2num(testing)];
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

final = sum(foundVec)
t = toc(t)
%16695334890 in 137 seconds.
%this tops the list of most disgusting code I've ever written.
%But it works!