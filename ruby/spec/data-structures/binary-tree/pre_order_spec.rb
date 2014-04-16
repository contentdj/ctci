require_relative '../../spec_helper'
describe BinaryTreeUtils do
  include BinaryTreeUtils

  context "#pre_order_traversal" do
    let(:pre_root) do
      node_four = TreeNode.new(4)
      node_six = TreeNode.new(6)
      node_five = TreeNode.new(5, node_four, node_six)
      node_two = TreeNode.new(2)
      node_three = TreeNode.new(3, node_two, node_five)
      node_zero = TreeNode.new(0)
      node_one = TreeNode.new(1, node_zero, node_three)

      node_eight = TreeNode.new(8)
      node_ten = TreeNode.new(10)
      node_nine = TreeNode.new(9, node_eight, node_ten)
      
      TreeNode.new(7, node_one, node_nine)
    end
    
    it "pre order traversal" do
      array = []
      pre_order_traversal(array, pre_root)
      expect(array).to eq [7, 1, 0, 3, 2, 5, 4, 6, 9, 8, 10]
    end
  end
end
