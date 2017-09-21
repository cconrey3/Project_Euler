function keys = Euler59Help
keys = {};
for testKey1 = 'a':'z'
    for testKey2 = 'a':'z'
        for testKey3 = 'a':'z'
            testKey = [testKey1,testKey2,testKey3];
            testStr = Euler59(testKey);
            if ~(any(testStr < ' ')  || any(testStr >= '#' & testStr <= '&') ||any(testStr > 'Z' & testStr < 'a')|| any(testStr > 'z'))
                keys = [keys testKey];
            end
        end
    end
end
end