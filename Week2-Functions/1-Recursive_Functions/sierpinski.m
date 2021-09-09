function sierpinski(depth)
    s = 1; c = [0;0]; % s = length of side, c = center
    clf; axis([c(1)-s/2,c(1)+s/2,c(2)-s/2,c(2)+s/2],'equal');
    title(sprintf('Sierpinski Triangle with Depth =  %d', depth))
    hold on;
    sier(depth, s, c);
    hold off;
end
function sier(d, s, c)
    if d <= 0 % base case
        plot(c(1)-[s,0,-s,s]/2,c(2)-[s,-s,s,s]*sqrt(3)/4,'k');
    else % recursive case
        s = s/2; % cuts size in half
        h = s*sqrt(3)/2; % height
        sier( d-1, s, c - [s;h]/2  ); % bottom left
        sier( d-1, s, c + [0;h]/2  ); % top middle
        sier( d-1, s, c + [s;-h]/2 ); % bottom right
    end
end
    