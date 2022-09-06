# Write a program to find the common elements between two arrays of integers.

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

arr1 = Array[1, 2, 3, 4, 5, 12, 13]
arr2 = Array[3, 4, 7, 6, 5, 12]

commonElement(arr1, arr2)
