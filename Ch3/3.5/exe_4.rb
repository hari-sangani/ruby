# Write a program to sort a numeric array and a string array.

class ArrayFunc
  def sort(arr)
    puts "Original Array : #{arr}"
    i = 0
    while i < arr.length - 1  do
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        i = 0
      else	
        i += 1
      end
    end
    puts "Sorted Array : #{arr}"
  end
end

puts "Enter the no. of element for Numeric array : "
eleNum = gets.chomp.to_i
arrNum = Array.new
j = 0
while j < eleNum do
	print "Element #{j}: "
	arrNum.push(gets.chomp.to_i)
	j += 1
end

puts "Enter the no. of element for String array : "
eleStr = gets.chomp.to_i
arrStr = Array.new
j = 0
while j < eleStr do
	print "Element #{j}: "
	arrStr.push(gets.chomp.to_s)
	j += 1
end

num = ArrayFunc. new
num.sort(arrNum)

string = ArrayFunc. new
string.sort(arrStr)
