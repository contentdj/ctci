require_relative '../binary-tree/tree_node'
module BinaryTreeUtils
  def balanced?(root)
    return true if root == nil || (root.left_child == nil && root.right_child == nil)

    left_child = root.left_child
    right_child = root.right_child
    
    ( height(left_child, 2) - height(right_child, 2) ).abs <= 1
  end

  def height(root, depth)
    if root.left_child == nil && root.right_child == nil
      return depth
    elsif root.left_child == nil
      right_child = root.right_child
      return height(right_child, depth + 1)
    elsif root.right_child == nil
      left_child = root.left_child
      return height(left_child, depth + 1)
    else
      left_child = root.left_child
      right_child = root.right_child

      return [height(left_child, depth + 1), height(right_child, depth + 1)].max
    end
  end
end
