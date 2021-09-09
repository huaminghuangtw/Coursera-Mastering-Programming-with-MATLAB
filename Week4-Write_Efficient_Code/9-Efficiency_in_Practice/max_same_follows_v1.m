function [people, follows] = max_same_follows_v1(following)
    people = [];
    num_follows = 0;
    for ii = 1:length(following)-1
        for jj = ii+1:length(following)
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