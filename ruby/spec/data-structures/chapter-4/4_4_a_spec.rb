require_relative '../../spec_helper'
describe BinaryTreeUtils do
  include BinaryTreeUtils

  context "#tree_to_lists_a" do
    let(:tree) do
      node_two = TreeNodeWithDepth.new(2)
      node_one = TreeNodeWithDepth.new(1)
      node_six = TreeNodeWithDepth.new(6)
      node_seven = TreeNodeWithDepth.new(7)
      node_three = TreeNodeWithDepth.new(3, node_two, node_one)
      node_five = TreeNodeWithDepth.new(5, node_six, node_seven)
      
      TreeNodeWithDepth.new(4, node_three, node_five)
    end
    it "tree_to_lists" do
      expect(tree_to_lists_a(tree)).to eq [[4], [3, 5], [2, 1, 6, 7]]
    end
  end
end
