# Write a program to get the character at the given index within the String.

def indexChar(str)

puts "Enter the index to get char: "
index = gets.chomp
puts "The character at #{index} in #{str} is '#{str[index.to_i]}'"

end

str = "Softices"
indexChar(str)
