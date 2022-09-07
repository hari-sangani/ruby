# Write a program which return true(boolean) for odd value & false(boolean) for even values.

class Check
  def checkOddEven(num)
    if num%2 == 0
      puts false  # Even number
    else
      puts true   # Odd number
    end
  end
end
    
puts "Enter the number : "
num = gets.chomp.to_i

obj = Check. new
obj.checkOddEven(num)
    