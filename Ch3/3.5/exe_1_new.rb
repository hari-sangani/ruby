# frozen_string_literal: true

# Write a method to compute the average of numbers

# Define class for Average
class AverageFunc
  def avg(num)
    i = 0
    while i < num.length
      num[i] = num[i].to_i
      i += 1
    end

    avg = num.sum / num.length
    puts "Average of #{num} is #{avg}"
  end
end

# User Input
puts 'Enter the numbers with space in between: '
num_arr = gets.chomp.split(' ')

inputs = AverageFunc.new
inputs.avg(num_arr)
