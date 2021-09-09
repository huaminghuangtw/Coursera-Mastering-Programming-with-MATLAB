function clique = max_clique_improved_2(g,clique)
    if nargin < 2
        clique = [];
    end
    max_clq = clique;
    if isempty(clique)
        for ii = 1:length(g)
            clq = max_clique_improved_2(g,ii);
             if length(clq) > length(max_clq)
                max_clq = clq;
             end
        end
    else
        candidates = g{clique(1)};                           % it is enough to check nodes that the first member of the clique follows
        candidates = candidates(g{clique(1)} > max(clique)); % since nodes are ordered, a potential new member must have a greater ID than current members
        for ii = 1:length(candidates)
            if check_clq(clique,candidates(ii),g)
                clq = max_clique_improved_2(g,[clique candidates(ii)]);
                if length(clq) > length(max_clq)
                    max_clq = clq;
                end
            end
        end
    end
    clique = max_clq;
end
        
function ok = check_clq(clq,id,g)
    ok = false;
    if ~isempty(find(id == clq))
        return;
    end
    for ii = 1:length(clq)
        if isempty(find(clq(ii) == g{id})) || isempty(find(id == g{clq(ii)}))
            return;
        end
    end
    ok = true;
end

%{
>>> load sn;
>>> tic; max_clique_improved_2(sn); toc;
Elapsed time is 1.296164 seconds.

or

>>> load sn;
>>> new_sn = graphConverter(sn);
>>> tic; max_clique_improved_2(new_sn); toc;
Elapsed time is 0.561900 seconds.
---
ans =
        1769        1773        1774        1833        2222
%}