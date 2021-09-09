function clique = max_clique_original(graph,clique)
    if nargin < 2                                       % originaly we call the function with just the graph
        clique = [];                                    % hence, the clique is initialized to an empty vector
    end
    max_clq = clique;                                   % max_clq will store the current largest clique
    if isempty(clique)                                  % when we first call the function
        for ii = 1:length(graph)                        % we need to test potential cliques starting from every possible node
            clq = max_clique_original(graph,ii);
            if length(clq) > length(max_clq)            % if the new one is larger than the current
                max_clq = clq;                          % we store the new one
            end
        end
    else
        for node = 1:length(graph)                                       % we are in a recursive call now: we test every node as a new member
            if isempty(find(node == clique))                             % unless it is already in the clique
                if check_clique(clique,node,graph)                       % if adding this node is still a clique
                    clq = max_clique_original(graph,[clique node]);      % we call ourself with the new expanded clique
                    if length(clq) > length(max_clq)                     % if what we get is larger the curent max
                        max_clq = clq;                                   % we store the new one
                    end
                end
            end
        end
    end
    clique = max_clq;                                           % return the largest one
end
        
function ok = check_clique(clq,node,graph)                      % adding node to clq still a clique?
    ok = false;
    for ii = 1:length(clq)                                      % for every current member
        if isempty(find(clq(ii) == graph{node})) || ...         % the member must be on the follows list of the new guy
                isempty(find(node == graph{clq(ii)}))           % the new guy must be on the follows list of the member
            return;
        end
    end
    ok = true;
end