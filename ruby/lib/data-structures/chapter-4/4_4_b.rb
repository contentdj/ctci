require_relative '../binary-tree/tree_node'
module BinaryTreeUtils
  def tree_to_lists_b(result, root, depth)
    return nil if root.nil?

    if result[depth].nil?
      result[depth] = []
    end
    result[depth] << root.data
    
    left = root.left_child
    if !left.nil?
      tree_to_lists_b(result, left, depth+1)
    end

    right = root.right_child
    if !right.nil?
      tree_to_lists_b(result, right, depth+1)
    end
  end
end