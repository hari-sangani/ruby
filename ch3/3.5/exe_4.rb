# frozen_string_literal: true

# Write a program to sort a numeric array and a string array.

# Define class for Array Function
class ArrayFunc
  def sort(arr)
    i = 0
    while i < arr.length - 1
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        i = 0
      else
        i += 1
      end
    end
    puts "Sorted Array : #{arr}"
  end
end

puts 'Enter the no. of element for Numeric array : '
num_ele = gets.chomp.to_i
num_arr = []
j = 0
while j < num_ele
  print "Element #{j}: "
  num_arr.push(gets.chomp.to_i)
  j += 1
end

puts 'Enter the no. of element for String array : '
str_ele = gets.chomp.to_i
str_arr = []
j = 0
while j < str_ele
  print "Element #{j}: "
  str_arr.push(gets.chomp.to_s)
  j += 1
end

num = ArrayFunc.new
num.sort(num_arr)

string = ArrayFunc.new
string.sort(str_arr)
