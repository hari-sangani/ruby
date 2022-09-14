# frozen_string_literal: true

# Write a program to count the letters, spaces, numbers and other characters of an input string.

# Define class for String Function
class StringFunc
  def initialize
    puts 'Enter a String: '
    @str = gets.chomp
    @space = 0
    @letter = 0
    @number = 0
  end

  def count_char
    i = 0
    while i < @str.length
      @space += 1 if @str[i] == ' '
      @letter += 1 if @str[i] >= 'a' && @str[i] <= 'z' || @str[i] >= 'A' && @str[i] <= 'Z'
      @number += 1 if @str[i] >= '0' && @str[i] <= '9'
      i += 1
    end
    @other_char = @str.length - (@space + @letter + @number)
    puts display
  end

  def display
    "Space: #{@space}\n" \
    "Letter: #{@letter}\n" \
    "Number: #{@number}\n" \
    "Other Character: #{@other_char}\n"
  end
end

obj = StringFunc.new
obj.count_char
