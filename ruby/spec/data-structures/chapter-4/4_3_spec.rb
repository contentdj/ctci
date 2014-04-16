require_relative '../../spec_helper'
describe BinaryTreeUtils do
  include BinaryTreeUtils

  context "#bst" do
    it "construct bst" do
      tree = bst([1, 3, 4, 5, 6, 8, 9, 11, 12])
      array = []
      in_order_traversal(array, tree)
      expect(array).to eq [1, 3, 4, 5, 6, 8, 9, 11, 12]

      tree = bst([])
      array = []
      in_order_traversal(array, tree)
      expect(array).to eq []

      tree = bst([1])
      array = []
      in_order_traversal(array, tree)
      expect(array).to eq [1]

      tree = bst([1, 2])
      array = []
      in_order_traversal(array, tree)
      expect(array).to eq [1, 2]

      tree = bst([1, 2, 3])
      array = []
      in_order_traversal(array, tree)
      expect(array).to eq [1, 2, 3]

      tree = bst([1, 2, 3, 4])
      array = []
      in_order_traversal(array, tree)
      expect(array).to eq [1, 2, 3, 4]
    end
  end
end
