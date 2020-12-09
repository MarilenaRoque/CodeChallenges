def bfs(graph)
    current_line = [0]
    output = []
    next_line = ['0']
    while !next_line.empty?
        output << current_line
        output = output.flatten
        next_line = []
        current_line.each do |el|
            graph[el].each do |node|
                if !output.include?(node)
                    next_line << node
                end
            end
        end
        current_line = next_line
    end
    return output
end

p bfs({
    0 => [2],
    1 => [4],
    2 => [5, 0, 3],
    3 => [6,7,2],
    4 => [1, 5],
    5 => [4, 2],
    6 => [3],
    7 => [8,3,9],
    8 => [7],
    9 => [7]

})
# => [0, 2, 5, 3, 4, 6, 7, 1, 8, 9]