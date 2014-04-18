require_relative '../../spec_helper'
describe BinaryTreeUtils do
  include BinaryTreeUtils

  context "#is_bst?" do
    let(:not_bst) do
      node_one = TreeNode.new(1)
      node_two = TreeNode.new(2)
      node_four = TreeNode.new(4, node_one, node_two)
      
      node_seven = TreeNode.new(7)
      node_eight = TreeNode.new(8)
      node_five = TreeNode.new(5, node_seven, node_eight)
      
      TreeNode.new(3, node_four, node_five)
    end
    let(:not_bst2) do
      node_one = TreeNode.new(1)
      node_two = TreeNode.new(2)
      node_three = TreeNode.new(3, node_one, node_two)
      
      node_five = TreeNode.new(5)
      node_eight = TreeNode.new(8)
      node_seven = TreeNode.new(7, node_five, node_eight)
      
      TreeNode.new(4, node_three, node_seven)
    end
    let(:bst) do
      node_one = TreeNode.new(1)
      node_three = TreeNode.new(3)
      node_two = TreeNode.new(2, node_one, node_three)
      
      node_five = TreeNode.new(5)
      node_eight = TreeNode.new(8)
      node_seven = TreeNode.new(7, node_five, node_eight)
      
      TreeNode.new(4, node_three, node_seven)
    end
    it "#is_bst?" do
      expect(is_bst?(nil)).to eq true
      expect(is_bst?(not_bst)).to eq false
      expect(is_bst?(not_bst2)).to eq false
      expect(is_bst?(bst)).to eq true
    end
  end
end
