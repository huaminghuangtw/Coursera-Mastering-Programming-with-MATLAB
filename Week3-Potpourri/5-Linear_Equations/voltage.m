function sol = voltage(V,R)
    % Create the coeffecients matrix
    M = [ R(2)*R(7) + R(1)*R(2) + R(1)*R(7), -R(1)*R(2),                                                        0;
          -R(3)*R(4)*R(8),                   R(4)*R(7)*R(8) + R(3)*R(4)*R(8) + R(3)*R(4)*R(7) + R(3)*R(7)*R(8), -R(3)*R(4)*R(7);
          0,                                 -R(5)*R(6),                                                        R(6)*R(8) + R(5)*R(6) + R(5)*R(8) ];
    y = V * [R(2)*R(7); R(4)*R(7)*R(8); R(6)*R(8)];
    
    % Use the backslash operator to solve the system of linear equations
    sol = M \ y;
end