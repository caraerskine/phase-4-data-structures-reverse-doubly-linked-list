require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    # your code here
    return if @head.nil? || @head.next_node.nil?

    current = @head
    previous = nil

    while current
      next_node = current.next_node
      current.next_node = previous
      current.prev_node = next_node
      previous = current
      current = next_node
    end

    # Update head and tail references
    @head, @tail = @tail, @head
  end
end
