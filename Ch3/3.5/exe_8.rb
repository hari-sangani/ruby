# Write a program to get the character at the given index within the String.

class StringFunc
  def charIndex(str)
    puts "Enter the index to get char: "
    index = gets.chomp
    puts "The character at #{index} in #{str} is '#{str[index.to_i]}'"
  end
end

puts "Enter a String : "
str = gets.chomp

obj = StringFunc. new
obj.charIndex(str)