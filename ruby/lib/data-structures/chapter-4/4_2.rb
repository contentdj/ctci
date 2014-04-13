require_relative '../graph/graph_node'
module GraphUtils
  def route_exists?(graph, source, sink)
    if source.nil? || sink.nil? || graph.empty?
      return false
    end

    return find_route(graph, source, sink, 0) == 1
  end

  def find_route(graph, source, sink, count)
    if source.data == sink.data || source == sink
      return 1
    elsif count >= graph.count
      return -1
    end

    source.visited = true    
    neighbors = source.neighbors

    neighbors.each do |v|
      if !v.visited
        result = find_route(graph, v, sink, count+1)
        if result == 0
          next
        else
          return result
        end
      end
    end
    
    return 0
  end
end
