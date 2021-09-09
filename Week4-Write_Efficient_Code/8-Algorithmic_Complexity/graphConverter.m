function newGraph = graphConverter(graph)
    temp_mtx = zeros(length(graph),length(graph));
    for i = 1:length(temp_mtx)   % Convert the 1-by-N cell array of vectors to a N-by-N logical array temp_mtx
        temp_mtx(graph{i},i) = 1;   % Set the position (row, column) to 1 if an ID in a specific column follows an ID in a specific row
    end
    temp_mtx(temp_mtx ~= temp_mtx.') = 0;   % Omit elements of temp_mtx that are not symmetric: one-way follow cannot belong to a clique, only two-way (mutual) follow can
    newGraph = cell(1, length(graph));   % Preallocate
    for i = 1:length(newGraph)   % Convert temp_mtx back to the original represantation
        newGraph{i} = find(temp_mtx(:,i));
    end
end