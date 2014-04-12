require_relative '../../spec_helper'
describe BinaryTreeUtils do
  include BinaryTreeUtils

  context "#balanced?" do
    let(:root) { TreeNode.new('root') }
    let(:one_level_tree) do
      left = TreeNode.new('left')
      right = TreeNode.new('right')
      TreeNode.new('root', left, right)
    end
    let(:two_level_tree) do
      node_four = TreeNode.new('4')
      node_five = TreeNode.new('5')
      node_two = TreeNode.new('2', node_four, node_five)
      node_three = TreeNode.new('3')
      TreeNode.new('node 1', node_two, node_three)
    end
    let(:unbalanced_tree) do
      node_five = TreeNode.new('5')
      node_four = TreeNode.new('4', node_five)
      node_two = TreeNode.new('2', node_four)
      node_three = TreeNode.new('3')
      TreeNode.new('node 1', node_two, node_three)
    end
    let(:unbalanced_tree2) do
      node_five = TreeNode.new('5')
      node_four = TreeNode.new('4', node_five)
      node_two = TreeNode.new('2')
      node_three = TreeNode.new('3', nil, node_four)
      TreeNode.new('node 1', node_two, node_three)
    end
    
    it "a tree with only the root should be balanced" do
      expect(balanced?(root)).to eq true
      expect(balanced?(nil)).to eq true
      expect(balanced?(one_level_tree)).to eq true
      expect(balanced?(two_level_tree)).to eq true
      expect(balanced?(unbalanced_tree)).to eq false
      expect(balanced?(unbalanced_tree2)).to eq false
    end
    it "get the height of a tree" do
      expect(height(one_level_tree, 1)).to eq 2
      expect(height(two_level_tree, 1)).to eq 3
      expect(height(unbalanced_tree, 1)).to eq 4
      expect(height(unbalanced_tree2, 1)).to eq 4
    end
  end
end
