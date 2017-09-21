%Euler54
%Poker
%answer is 376 for 'euler54.txt'
function [p1count winners] = Euler54(varargin)
tic
if nargin == 0
    fn = 'poker.txt';
else
    fn = varargin{1};
end
[hand1,hand2] = getHands(fn);
winners = zeros(1000,1);
for i = 1:1000
    winners(i) = pokerFight(hand1(i,:),hand2(i,:));
end
p1count = sum(winners(winners==1));
toc
end

function [hand1,hand2] = getHands(fn)
fh = fopen('euler54.txt');
hand1 = char(zeros(1000,14));
hand2 = hand1;
i = 1;
while ~feof(fh)
    line = fgetl(fh);
    hand1(i,:) = line(1:floor(end/2));
    hand2(i,:) = line(ceil(end/2)+1:end);
    i = i+1;
end
end
function winner = pokerFight(hand1,hand2)
[cards1,suits1] = formatHand(hand1);
[cards2,suits2] = formatHand(hand2);
[r1 ow1]= pRank(cards1,suits1);
[r2 ow2]= pRank(cards2,suits2);
if r1 > r2
    winner = 1;
elseif r1 < r2
    winner = 2;
elseif r1 == r2
    [haswinner winner] = pComp(ow1,ow2);
    if ~haswinner
        for i = 1:length(ow1)
        cards1 = cards1(cards1~=ow1(i));
        cards2 = cards2(cards2~=ow2(i));
        end
        winner = highCard(cards1,cards2);
    end
end
end
