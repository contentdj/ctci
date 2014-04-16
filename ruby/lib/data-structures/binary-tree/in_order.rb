require_relative '../binary-tree/tree_node'
module BinaryTreeUtils
  def in_order_traversal(array, root)
    return if root.nil?

    left_child = root.left_child
    right_child = root.right_child
    if !left_child.nil?
      in_order_traversal(array, left_child)
    end
    array << root.data
    if !right_child.nil?
      in_order_traversal(array, right_child)
    end
  end
end
