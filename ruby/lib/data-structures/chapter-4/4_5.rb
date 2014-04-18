require_relative '../binary-tree/tree_node'
module BinaryTreeUtils
  def is_bst?(root)
    if root.nil?
      return true
    end

    left = root.left_child
    result = true
    if !left.nil?
      if left.data > root.data
        return false
      else
        result = result && is_bst?(left)
      end
    end

    right = root.right_child
    if !right.nil?
      if root.data > right.data
        return false
      else
        result = result && is_bst?(right)
      end
    end

    return result
  end
end