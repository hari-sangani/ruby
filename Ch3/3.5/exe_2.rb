# Write a program to reverse the array contents.

def reverse(arr)
	i = 0
	puts "Original Array : #{arr}" 

	while i < (arr.length/2) do
	temp = arr[i]
	arr[i] = arr[arr.length - 1 - i]
	arr[arr.length - 1 - i] = temp
	i += 1
	end

	puts "Reversed Array : #{arr}"
end

arr = Array[1, 2, "RUBY", true, 0, "abcd", 34]
reverse(arr)
