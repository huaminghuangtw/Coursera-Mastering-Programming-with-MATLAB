function [people, follows] = max_same_follows_v2(following)
    people = [];
    num_follows = 0;
    for ii = 1:length(following)-1
        if length(following{ii}) <= num_follows  % skip if list
            continue;                            % is too short
        end
        for jj = ii+1:length(following)
            if length(following{jj}) <= num_follows % skip if list
                continue;                           % is too short
            end
            tmp_follows = intersect(following{ii},following{jj});
            n = length(tmp_follows);
            if n > num_follows
                num_follows = n;
                people = [ii jj];
                follows = tmp_follows;
            end
        end
    end
end