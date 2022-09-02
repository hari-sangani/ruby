# Write a method to compute the average of three numbers

def avg(a, b, c)
  avg = (a.to_i + b.to_i + c.to_i)/3
  puts avg
end

puts "Enter three numbers: "
num = gets.chomp.split(" ")
a,b,c = num
avg(a,b,c)
