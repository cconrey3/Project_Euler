%Problem 25%
%Find the index of the first fibonacci number to exceed 1000 digits.
%needs bignum.m that I wrote on 6/10-12/2016
t = tic;
len = 0;
fb = [bignum(1) bignum(1)]
ind = 2;
while len < 1000
    fb = [fb(2) fb(1)+fb(2)];
    %output = bnprint(fb(2));     
    ind = ind + 1;
    len = length(fb(2).val);
end
t = toc(t);
%solves in 0.4545 s.



%{

%%%classdef of bignum developped to the point that it could solve euler25
%includes:
%double constructor (only formatted for integers)
%function form(obj) to re-format a bignum after an operation that may
    result in a single 'digit' being greater than 10
%addition operator


classdef bignum
    properties
        val;
    end
    methods
        function obj = bignum(n)
            if nargin > 1 
                error('only one number in at a time');
            elseif n < 0
                error('input must be non-negative');
            else
            good2go = n < 10;
            vec = [];
            while ~good2go
                vec = [mod(n,10) vec];
                n = floor(n/10);
                good2go = n < 10;
            end
            obj.val = [n vec];
            end
        end

        function obj = form(obj)
            v = obj.val;
            for n = length(v):-1:1
                if v(n) > 9
                    ones = mod(v(n),10);
                    tens = floor(v(n)/10); 
                    if n > 1
                        v(n-1) = v(n-1) + tens;
                        v(n) = ones;
                    elseif n ==1
                        v = [0 v];
                        v(1) = tens;
                        v(2) = ones;
                    end
                end
            end
            obj.val = v;
        end
        
        function added = plus(obj1,obj2)
            n1 = length(obj1.val); n2 = length(obj2.val);
            if n1 > n2
                obj2.val = [zeros(1,n1-n2) obj2.val];
            elseif n1 < n2
                obj1.val = [zeros(1,n2-n1) obj1.val];
            end
            added = bignum(0);
            added.val = obj1.val + obj2.val;
            added = form(added);
        end
        
        function str = bnprint(obj)
            str = num2str(obj.val);
            str(str == ' ') = [];
            disp(str);
        end
    end
end


%}