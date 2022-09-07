# Write a method to compute the average of numbers

class AverageFunc
  def avg(num)
    sum = 0
    i = 0
    while i < num.length do
      num[i] = num[i].to_i
      sum += num[i]
      i += 1
    end
    avg = sum / num.length
    puts "Average of #{num} is #{avg}"
  end
end

# User Input
puts "Enter the numbers with space in between: "
numArr = gets.chomp.split(" ")

inputs = AverageFunc. new
avg = inputs.avg(numArr)