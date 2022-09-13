# You have been given 3 integers - N1, N2 and N3. Find how many numbers between N1 and N2 (both inclusive) are divisible by N3. Print these numbers and count.

class Calc
  def div_by_n3
    puts "Enter N1, N2, N3 : "
    n1, n2, n3 = gets.chomp.split(' ')
    n1, n2, n3 = n1.to_i, n2.to_i, n3.to_i 
    
    count = 0
    result = []
    for i in (n1..n2)
      if i % n3 == 0
        result.push(i)
        count += 1
      end
    end
    puts "Numbers: #{result} & Counts: #{count}"
  end
end

obj = Calc. new
obj.div_by_n3
