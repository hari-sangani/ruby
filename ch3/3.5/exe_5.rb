# frozen_string_literal: true

# Write a program which find the sum of odd & even number in given Array.
class ArrayFunc
  def arr_input
    arr = []
    puts 'Enter the no. of element for array : '
    ele = gets.chomp.to_i
    j = 0
    while j < ele
      print "Element #{j}: "
      arr.push(gets.chomp.to_i)
      j += 1
    end
    arr
  end

  def sum_odd_even(arr)
    puts "Array : #{arr}"
    i = 0
    even = 0
    odd = 0
    while i < arr.length
      arr[i].even? ? even += arr[i] : odd += arr[i]
      i += 1
    end
    puts "Odd Sum : #{odd}"
    puts "Even Sum : #{even}"
  end
end

obj = ArrayFunc.new
arr = obj.arr_input
obj.sum_odd_even(arr)
