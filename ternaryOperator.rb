puts "Enter Three Numbers"

num1 = gets.to_i
num2 = gets.to_i
num3 = gets.to_i

(num1>num2 ? x = num1 : sx = num2)>num3 ? y = x : y = num3

puts "\nLargest of Three Numbers is #{y}\n"