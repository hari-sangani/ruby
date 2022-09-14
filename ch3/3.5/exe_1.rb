# frozen_string_literal: true

# Write a method to compute the average of three numbers

# Define class for Average
class Average
  def initialize(num1, num2, num3)
    @num1 = num1.to_i
    @num2 = num2.to_i
    @num3 = num3.to_i
  end

  def avg
    (@num1 + @num2 + @num3) / 3
  end
end

puts 'Enter three numbers with space in between: '
num1, num2, num3 = gets.chomp.split(' ')

input = Average.new(num1, num2, num3)

avg = input.avg()
puts "Average of #{num1}, #{num2} and #{num3} is #{avg}"
