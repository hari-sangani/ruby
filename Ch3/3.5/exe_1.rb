# Write a method to compute the average of three numbers

class Average
  # constructor method
  def initialize(a, b, c)
    @a, @b, @c = a.to_i, b.to_i, c.to_i
  end

  # Instance method
  def avg()
    (@a + @b + @c)/3
  end
end

# User Input
puts "Enter three numbers with space in between: "
a, b, c = gets.chomp.split(" ")

# Create a Object 
input = Average.new(a, b, c)

#call instance methods
avg = input.avg()
puts "Average of #{a}, #{b} and #{c} is #{avg}"