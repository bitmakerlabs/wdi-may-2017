# Problem 2:
# Fizzbuzz: for every number between 1 and 100:
# print "fizz" for each number that is divisible by 3,
# print "buzz" for each number that is divisible by of 5,
# print "fizzbuzz" for each number that is divisible by both 3 and 5
# for all other numbers print the number itself

one_to_one_hundred = (1..100)

one_to_one_hundred.each do |current_num|
  if current_num % 3 == 0 && current_num % 5 == 0
    puts "fizzbuzz"
  elsif current_num % 3 == 0
    puts "fizz"
  elsif current_num % 5 == 0
    puts "buzz"
  else # all other numbers
    puts current_num
  end
end