# Problem 1: get the total sum of a list of numbers

# 5 6 877 100 23
# 0  +  5    is 5
# 5 + 6 is 11
# 11 + 877 is 888
# 888 + 100 is 988
# 988 + 23 is 1011

#list_of_numbers = [5, 6, 877, 100, 23]

def sum_list_of_numbers(list_of_numbers)
  current_total = 0
  list_of_numbers.each do |current_number|
    current_total = current_total + current_number
  end

  return current_total
end

answer = sum_list_of_numbers([5,6,877,100,23])

puts "The answer is #{answer}"

answer2 = sum_list_of_numbers([1,2,3])

puts "The answer is #{answer2}"










# Problem 2:
# Fizzbuzz: for every number between 1 and 100:
# print "fizz" for each number that is divisible by 3,
# print "buzz" for each number that is divisible by of 5,
# print "fizzbuzz" for each number that is divisible by both 3 and 5
# for all other numbers print the number itself


# Problem 3: find frequency of the letter "s" in a string

# Problem 4: find frequency of the letter "a" in a string

# Problem 5: find the most frequent letter in a string

