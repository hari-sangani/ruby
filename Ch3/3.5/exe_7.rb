# Write a program which return true(boolean) for odd value & false(boolean) for even values.

def checkOddEven(num)

    if num.to_i%2 == 0
    puts false
    else
    puts true
    end
    
    end
    
    puts "Enter the number : "
    num = gets.chomp
    
    checkOddEven(num)
    