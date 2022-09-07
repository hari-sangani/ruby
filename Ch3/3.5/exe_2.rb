# Write a program to reverse the array contents.

class ArrayFunc
	def reverse(arr)
		i = 0
		puts "Original Array : #{arr}" 
		while i < (arr.length/2) do
			arr[i], arr[arr.length - 1 - i] = arr[arr.length - 1 - i], arr[i]	
			i += 1
		end
		puts "Reversed Array : #{arr}"
	end
end

puts "Enter the no. of element for array : "
ele = gets.chomp.to_i
arr = Array.new
j = 0
while j < ele do
	print "Element #{j}: "
	arr.push(gets.chomp.to_i)
	j += 1
end

arrObject = ArrayFunc. new
arrObject.reverse(arr)