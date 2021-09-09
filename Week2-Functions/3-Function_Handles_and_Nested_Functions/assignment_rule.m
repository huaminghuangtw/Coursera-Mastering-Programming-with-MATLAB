function circle_area = assignment_rule(r)
    calculate_area
    fprintf('Area of circle with radius %.1f = %.1f\n',r,circle_area)
    
    function calculate_area
        circle_area = pi*r^2;
    end  
end