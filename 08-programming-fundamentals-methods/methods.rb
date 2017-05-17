# No Method

colours = ['red', 'blue', 'perriwinkle', 'green']

# # Problem: print the 'red', 'blue', 'green' in order
#
# puts colours[0]
# puts colours[1]
# puts colours[3]
#
# puts colours[0]
# puts colours[1]
# puts colours[2] # => 'perriwinkle'!?
#
# puts colours[0]
# puts colours[1]
# puts colours[3]

# Methods
def print_colours
  colours = ['red', 'blue', 'perriwinkle', 'green']

  puts colours[0]
  puts colours[1]
  puts colours[2]
  puts colours[3]
end


def sum(a, b)
  a + b
end

sum

def square(number)
  result = number

  while true
    if result == (number * number)
      # we want to return the result
      return result
      result = "this won't run"
    end

    result += number
  end


  # Too easy!
  # number * number
end

result = square(10)


def colour_list(list)
  # list = colours = ['red', 'blue', 'perriwinkle', 'green']
  puts list
end

colour_list(colours)


def add_to_array(array, new_item)
  # array = colours
  # new_item = 'pink'
  array << new_item
end

add_to_array(colours, 'pink')

# Will colours now include pink???
colours.include?('pink')
