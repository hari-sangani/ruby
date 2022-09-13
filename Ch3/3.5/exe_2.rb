# Write a program to reverse the array contents.

class ArrayFunc
	def initialize
		@arr = []
		puts "Enter the no. of element for array : "
		ele = gets.chomp.to_i

		j = 0
		while j < ele
			print "Element #{j}: "
			@arr.push(gets.chomp.to_i)
			j += 1
		end		
	end

	def reverse()
		puts "Original Array : #{@arr}" 
		i = 0
		while i < @arr.length/2
			@arr[i], @arr[@arr.length - 1 - i] = @arr[@arr.length - 1 - i], @arr[i]	
			i += 1
		end
		puts "Reversed Array : #{@arr}"
	end
end

arrObject = ArrayFunc.new
arrObject.reverse