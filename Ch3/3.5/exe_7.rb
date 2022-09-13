# Write a program which return true(boolean) for odd value & false(boolean) for even values.

class Check
  def check_odd_even
    puts "Enter the number : "
    @num = gets.chomp.to_i
    
    if @num.even?
      puts false  # Even number
    else
      puts true   # Odd number
    end
  end
end
    
obj = Check.new
obj.check_odd_even
    