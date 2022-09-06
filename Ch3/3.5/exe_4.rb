# Write a program to sort a numeric array and a string array.

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
    
    arrNum = Array[4, 36, 12, 1, 7, 23]
    sort(arrNum)
    puts "\n"
    arrString = Array["abc", "mno", "def", "xyz", "pqr"]
    sort(arrString)
    