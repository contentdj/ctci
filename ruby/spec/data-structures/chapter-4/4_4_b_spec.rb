require_relative '../../spec_helper'
describe BinaryTreeUtils do
  include BinaryTreeUtils

  context "#tree_to_lists_b" do
    let(:tree) do
      node_two = TreeNode.new(2)
      node_one = TreeNode.new(1)
      node_six = TreeNode.new(6)
      node_seven = TreeNode.new(7)
      node_three = TreeNode.new(3, node_two, node_one)
      node_five = TreeNode.new(5, node_six, node_seven)
      
      TreeNode.new(4, node_three, node_five)
    end
    it "tree_to_lists" do
      result = []
      tree_to_lists_b(result, tree ,0)
      expect(result).to eq [[4], [3, 5], [2, 1, 6, 7]]
    end
  end
end
