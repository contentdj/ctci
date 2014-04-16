class TreeNodeWithDepth
  attr_reader :data
  attr_accessor :left_child, :right_child, :parent, :depth
  def initialize(data, left_child=nil, right_child=nil) 
    @data = data
    @left_child = left_child
    @right_child = right_child
  end
end

module BinaryTreeUtils
  def tree_to_lists_a(root)
    return nil if root.nil?

    root.depth = 0
    lists = []
    q = []
    q.unshift(root)
    lists[0] = [root]

    while !q.empty?
      node = q.pop

      left = node.left_child
      if !left.nil?
        left.depth = node.depth + 1
        lists[left.depth] = [] if lists[left.depth].nil?
        lists[left.depth] << left
        q.unshift(left)
      end

      right = node.right_child
      if !right.nil?
        right.depth = node.depth + 1
        lists[right.depth] = [] if lists[right.depth].nil?
        lists[right.depth] << right
        q.unshift(right)
      end
    end

    lists.map{|list| list.map{|node| node.data}}
  end
end