# frozen_string_literal: true

# Write a program to find the common elements between two arrays of integers.

# Define class for Array Function
class ArrayFunc
  def arr_input
    puts 'Enter the no. of element for array: '
    ele = gets.chomp.to_i
    arr = []
    j = 0
    while j < ele
      print "Element #{j}: "
      arr.push(gets.chomp.to_i)
      j += 1
    end
    arr
  end

  def common_element(arr1, arr2)
    i = 0
    while i < arr1.length
      j = 0
      while j < arr2.length
        puts arr2[j] if arr2[j] == arr1[i]
        j += 1
      end
      i += 1
    end
  end
end

obj = ArrayFunc.new
arr1 = obj.arr_input
arr2 = obj.arr_input
obj.common_element(arr1, arr2)
