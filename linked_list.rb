class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"

  end
end

class Stack
    attr_accessor :nodes

    def initialize
        @nodes = nil
    end

    def push(value)
      @nodes = LinkedListNode.new(value, @nodes)
    end

    def pop
      if @nodes.nil?
        nil
      else
        returning_value = @nodes.value
        @nodes = @nodes.next_node
        returning_value
      end
    end
end

def reverse_list(list, previous=nil)
  stack = Stack.new

    while list
        stack.push(list.value)
        list = list.next_node
    end
    LinkedListNode.new(stack.pop, stack.nodes)
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)
