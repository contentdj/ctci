require_relative '../../spec_helper'
describe GraphUtils do
  include GraphUtils

  context "#route_exists?" do
    let(:root) { GraphNode.new('root') }
    let(:graph) do
      @node_six = GraphNode.new('6')
      @node_four = GraphNode.new('4')
      @node_five = GraphNode.new('5')
      @node_three = GraphNode.new('3', [@node_four])
      @node_two = GraphNode.new('2', [@node_three, @node_six])
      @node_one = GraphNode.new('1', [@node_two])
      @node_six.neighbors = [@node_one]
      [@node_one, @node_two, @node_three, @node_four, @node_five, @node_six]
    end
    it "a tree with only the root should be balanced" do
      expect(route_exists?(graph, @node_one, @node_one)).to eq true
      graph.each do |v|
        v.visited = false
      end
      expect(route_exists?(graph, nil, nil)).to eq false
      graph.each do |v|
        v.visited = false
      end
      expect(route_exists?([], nil, nil)).to eq false
      graph.each do |v|
        v.visited = false
      end
      expect(route_exists?(graph, @node_one, @node_two)).to eq true
      graph.each do |v|
        v.visited = false
      end
      expect(route_exists?(graph, @node_one, @node_six)).to eq true
      graph.each do |v|
        v.visited = false
      end
      expect(route_exists?(graph, @node_one, @node_four)).to eq true
      graph.each do |v|
        v.visited = false
      end
      expect(route_exists?(graph, @node_one, @node_five)).to eq false
    end
  end
end
