# Write a program which find the sum of odd & even number in given Array.

def sumOddEven(arr)
puts "Array : #{arr}"
i = 0
odd = 0
even = 0
while i < arr.length do
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

arr = Array[1, 2, 3, 4, 5, 6, 7, 8, 9]
sumOddEven(arr)
