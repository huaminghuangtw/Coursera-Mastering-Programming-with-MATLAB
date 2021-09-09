function A
    xA = 1;
    function B
        xB = 2;
        function C
            xC = 3;
            show('C','xA',xA)
            show('C','xB',xB)
            show('C','xC',xC)
        end % C
        show('B','xA',xA)
        show('B','xB',xB);
        C
        D
    end % B
    function D
        xD = 4;
        show('D','xA',xA);
        show('D','xD',xD);
    end % D
    show('A','xA',xA)
    B
    D
end

function show(funct,name,value)
    fprintf('in %s: %s = %d\n',funct,name,value);
end