require_relative '../binary-tree/tree_node'
module BinaryTreeUtils
  def bst(array)
    size = array.size
    if size == 1
      return TreeNode.new(array[0])
    elsif array.nil? || size == 0
      return nil
    end

    index = size / 2
    middle= array[index]

    left = array[0..index-1]
    right = array[index+1..size-1]
    
    middle_node = TreeNode.new(middle)
    middle_node.left_child = bst(left)
    middle_node.right_child = bst(right)

    return middle_node
  end
end
