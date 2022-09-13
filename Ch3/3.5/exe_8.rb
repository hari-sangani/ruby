# frozen_string_literal: true

# Write a program to get the character at the given index within the String.

# Define class for String Function
class StringFunc
  def char_index
    puts 'Enter a String : '
    str = gets.chomp

    puts 'Enter the index to get char: '
    index = gets.chomp

    puts "The character at #{index} in #{str} is '#{str[index.to_i]}'"
  end
end

obj = StringFunc.new
obj.char_index
