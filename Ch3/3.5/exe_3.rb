# Write a program to find the common elements between two arrays of integers.
class ArrayFunc
	def commonElement(arr1, arr2)
		puts "Array 1: #{arr1}"
		puts "Array 2: #{arr2}"
		i = 0
		while i < arr1.length do
			j = 0
			while j < arr2.length do
				if arr2[j] == arr1[i] 
					puts arr2[j]
				end
				j +=1
			end
			i +=1
		end
	end
end

puts "Enter the no. of element for array 1 : "
ele1 = gets.chomp.to_i
arr1 = Array.new
j = 0
while j < ele1 do
	print "Element #{j}: "
	arr1.push(gets.chomp.to_i)
	j += 1
end

puts "Enter the no. element for array 2: "
ele2 = gets.chomp.to_i
arr2 = Array.new
j = 0
while j < ele2 do
	print "Element #{j}: "
	arr2.push(gets.chomp.to_i)
	j += 1
end

obj = ArrayFunc. new
obj.commonElement(arr1, arr2)
