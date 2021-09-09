function clique = max_clique_improved_1(graph,clique)
    if nargin < 2
        clique = [];
    end
    max_clq = clique;
    if isempty(clique)
        for ii = 1:length(graph)
             clq = max_clique_improved_1(graph,ii);
             if length(clq) > length(max_clq)
                max_clq = clq;
             end
        end
    else
        for ii = 1:length(graph{clique(1)})   % only consider nodes that the first node in the clique follows
            node = graph{clique(1)}(ii);
            if  any(node == clique)    % replace isempty(find(node == clique)) with ~any(node == clique) for better performance
                continue;
            end
            ok = true;   % inlined check_clique:
            for jj = 1:length(clique)
                if ~any(clique(jj) == graph{node}) || ~any(node == graph{clique(jj)})
                    ok = false;
                    break;
                end
            end
            if ok   % check_clique(clq,node,graph)
                clq = max_clique_improved_1(graph,[clique node]);
                if length(clq) > length(max_clq)
                    max_clq = clq;
                end
            end
        end
    end
    clique = max_clq;
end

%{
>>> load sn;
>>> tic; max_clique_improved_1(sn); toc;
Elapsed time is 5.185629 seconds.

or

>>> load sn;
>>> new_sn = graphConverter(sn);
>>> tic; max_clique_improved_1(new_sn); toc;
Elapsed time is 1.393950 seconds.
---
ans =
        1769        1773        1774        1833        2222
%}