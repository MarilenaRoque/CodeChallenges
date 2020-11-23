# https://repl.it/student/submissions/15620745

def graph(hash_graph)
    traverse_4(hash_graph, 0)
end

def traverse_4(hash_graph, key, output=[])
    output << key
    return output if key == 4
    traverse_4(hash_graph, hash_graph[key][0], output)
end
  
  
hash = { 
    0 => [2], 
    1 => [4], 
    2 => [5, 0, 3], 
    3 => [2], 
    4 => [1, 5], 
    5 => [4, 2]
}

p graph(hash)
#=> [0, 2, 5, 4]