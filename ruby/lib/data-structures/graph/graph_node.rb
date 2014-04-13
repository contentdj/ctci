class GraphNode
  attr_reader :data
  attr_accessor :neighbors, :visited
  def initialize(data, neighbors=[]) 
    @data = data
    @neighbors = neighbors
    @visited = false
  end
end