require_relative '../../spec_helper'
describe BinaryTreeUtils do
  include BinaryTreeUtils

  context "#successor" do
    let(:tree) do
      @node_one = TreeNode.new(1)
      @node_five = TreeNode.new(5)
      @node_four = TreeNode.new(4, nil, @node_five)
      @node_three = TreeNode.new(3, @node_one, @node_four)

      @node_seven = TreeNode.new(7)
      @node_eight = TreeNode.new(8, @node_seven)
      
      @node_six = TreeNode.new(6, @node_three, @node_eight)

      @node_six
    end
    it "successor" do
      expect(successor(tree, @node_one)).to eq @node_three
      expect(successor(tree, @node_four)).to eq @node_five
      expect(successor(tree, @node_five)).to eq @node_six
      expect(successor(tree, @node_six)).to eq @node_seven
      expect(successor(tree, @node_seven)).to eq @node_eight
      expect(successor(tree, @node_eight)).to eq nil
      expect(successor(tree, nil)).to eq nil
    end
  end
end
