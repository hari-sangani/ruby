# Write a program to count the letters, spaces, numbers and other characters of an input string.
class StringFunc
  def count_char
    puts "Enter a String: "
    str = gets.chomp
    i = 0
    space = 0
    letter = 0
    number = 0
    otherChar = 0
    while i < str.length
      if str[i] == ' '
        space += 1
      elsif str[i] >= 'a' && str[i] <= 'z' || str[i] >= 'A' && str[i] <= 'Z'
        letter += 1
      elsif str[i] >= '1' && str[i] <= '9' || str[i] == '0'
        number += 1
      else
        otherChar += 1
      end
      i += 1
    end
    puts "Space: #{space}"
    puts "Letter: #{letter}"
    puts "Number: #{number}"
    puts "Other Character: #{otherChar}"
  end
end

obj = StringFunc. new
obj.count_char