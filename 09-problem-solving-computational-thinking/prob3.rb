# Problem 3: find frequency of the letter "s" in a string
# sssjsdlfksdnvssdflkjbkhk
# 0
# 1
# 2
# 3
# 4
# 5
# 6
# 7


# iterate through list of letters
# if it's an s, count it
# otherwise do nothing

def count_freq_of_letter_in_string(string, letter_to_look_for)
  count = 0

  string.each do |letter|

    if letter == letter_to_look_for 
      count += 1

    end # if

  end # each

  return count

end # def

word = "sssjsdlfksdnvssdflkjbkhk".split("")
number_of_s = count_freq_of_letter_in_string(word, "s")
count_freq_of_letter_in_string("Natalie".split(""), "a")
count_freq_of_letter_in_string("hello", "l")

# Problem 4: find frequency of the letter "a" in a string

