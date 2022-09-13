# frozen_string_literal: true

# You have been given 3 integers - N1, N2 and N3. Find how many numbers between N1 and N2 (both inclusive)
# are divisible by N3. Print these numbers and count.

# Define class for calculation
class Calc
  def initialize
    puts 'Enter N1, N2, N3 : '
    n1, n2, n3 = gets.chomp.split(' ')
    @n1 = n1.to_i
    @n2 = n2.to_i
    @n3 = n3.to_i
  end

  def div_by_n3
    count = 0
    result = []
    (@n1..@n2).each do |i|
      result.push(i) if (i % @n3).zero?
      count += 1
    end
    puts "Numbers: #{result} & Counts: #{count}"
  end
end

obj = Calc.new
obj.div_by_n3
