# Write a program which find the sum of odd & even number in given Array.
class ArrayFunc
  def arr_input
    arr = []
    puts "Enter the no. of element for array : "
    ele = gets.chomp.to_i
    j = 0
    while j < ele
      print "Element #{j}: "
      arr.push(gets.chomp.to_i)
      j += 1
    end
    return arr
  end

  def sum_odd_even(arr)
    puts "Array : #{arr}"
    i = 0
    odd = 0
    even = 0
    while i < arr.length
      if arr[i]%2 == 0
        even += arr[i]
      else 
        odd += arr[i]
      end
      i += 1
    end
    puts "Odd Sum : #{odd}" 
    puts "Even Sum : #{even}"
  end
end

obj = ArrayFunc .new
arr = obj.arr_input
obj.sum_odd_even(arr)
