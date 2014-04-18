require_relative '../binary-tree/tree_node'
module BinaryTreeUtils
  def successor(tree, node)
    if node.nil?
      return nil
    end
    
    parent = node.parent
    if parent.nil?
      # root
      return findMin(node.right_child)
    elsif parent.left_child == node
      return parent
    elsif parent.right_child == node 
      if node.right_child.nil?
        # right leaf node
        # return grandparent
        return find_successor_grand_parent(node)
      else
        return findMin(node.right_child)
      end
    end
  end

  def findMin(root)
    if root.nil?
      return nil
    end

    left = root.left_child
    if !left.nil?
      return findMin(left)
    else
      return root
    end
  end

  def find_successor_grand_parent(node)
    parent = node.parent
    while !parent.nil? && parent.data < node.data
      parent = parent.parent
    end
    return parent
  end
end