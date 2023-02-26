require_relative './stack'
require 'pry'

# your code here

def balancing_parentheses input
  arr_input = input.split('')
  open_parentheses = Stack.new
  close_parentheses = []
  if arr_input.first == ')' and arr_input.last =='('
    return 2
  else
    arr_input.each do |value|
      value == '(' ? open_parentheses.push(value) : close_parentheses.push(value)
    end
  end
  open_parentheses.size == close_parentheses.length ? 0 : (open_parentheses.size-close_parentheses.length).abs()

end
