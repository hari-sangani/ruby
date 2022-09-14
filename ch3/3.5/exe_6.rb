# frozen_string_literal: true

# Write a program to allow the user to input two integer values and then the program prints the results of
# adding, subtracting, multiplying, and dividing among the two values.

# Define class for Calculation
class Calc
  def initialize
    puts 'Enter two number: '
    num1, num2 = gets.chomp.split(' ')
    @num1 = num1.to_i
    @num2 = num2.to_i
  end

  def asmd
    puts "Num1 = #{@num1} and Num2 = #{@num2}"
    puts "Addition : #{@num1 + @num2}"
    puts "Subtraction : #{@num1 - @num2}"
    puts "Multiplication : #{@num1 * @num2}"
    puts "Division : #{@num1 / @num2}"
  end
end

num = Calc.new
num.asmd
