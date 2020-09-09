class Node
    attr_accessor :value, :previous_node
  
    def initialize(value)
      @value = value
      @previous_node = nil
    end
end
  
class Stack
    attr_accessor :head
    
    def initialize
      @head = nil
    end
    
    def push(number)
      x = Node.new(number)
      x.previous_node = @head
      @head = x
  
    end
    
    def pop
      if @head == nil
        puts "Empty List" 
      else
        poped = @head.value
        @head.previous_node
        @head = @head.previous_node
      end
      return poped
    end
end


def balanced_brackets?(string)
    stack = Stack.new
    string.split('')
    (string.length).times do |i|
        if ['(', '{', '['].include?(string[i])
            stack.push(string[i])
        elsif !stack.head.nil? && (string[i] == ')' && stack.head.value == '(') || (string[i] == '}' && stack.head.value == '{') || (string[i] == ']' && stack.head.value == '[')
            stack.pop
        elsif [')', '}', ']'].include?(string[i]) || stack.head.nil?
            return false
        end
    end
    return stack.head.nil?
end
 


puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true