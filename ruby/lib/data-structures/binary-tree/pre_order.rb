require_relative '../binary-tree/tree_node'
module BinaryTreeUtils
  def pre_order_traversal(array, root)
    return if root.nil?

    array << root.data
    
    left_child = root.left_child
    if !left_child.nil?
      pre_order_traversal(array, left_child)
    end

    right_child = root.right_child
    if !right_child.nil?
      pre_order_traversal(array, right_child)
    end
  end
end
