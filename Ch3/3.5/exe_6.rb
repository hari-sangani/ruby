# Write a program to allow the user to input two integer values and then the program prints the results of adding, subtracting, multiplying, and dividing among the two values.

def asmd(num1, num2)

    num1, num2 = num1.to_i, num2.to_i
    puts "Num1 = #{num1} and Num2 = #{num2}"
    
    puts "Addition : #{num1 + num2}"
    puts "Subtraction : #{num1 - num2}"
    puts "Multiplication : #{num1 * num2}"
    puts "Division : #{num1 / num2}"
    
    end
    
    puts "Enter two number: "
    num1, num2 = gets.chomp.split(" ")
    asmd(num1, num2)    