require_relative '../../spec_helper'
describe BinaryTreeUtils do
  include BinaryTreeUtils

  context "#in_order_traversal" do
    let(:root) do
      node_four = TreeNode.new('4')
      node_five = TreeNode.new('5', node_four)
      node_two = TreeNode.new('2')
      node_one = TreeNode.new('1', nil, node_two)
      TreeNode.new('3', node_one, node_five)
    end
    
    it "a tree with only the root should be balanced" do
      array = []
      in_order_traversal(array, root)
      expect(array).to eq ["1", "2", "3", "4", "5"]
    end
  end
end
