# Write a method to compute the average of numbers

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
puts "Enter the numbers with space in between: "
numArr = gets.chomp.split(" ")

inputs = AverageFunc. new
avg = inputs.avg(numArr)