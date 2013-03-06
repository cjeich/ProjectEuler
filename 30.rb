#! /Users/ceich/.rvm/rubies/ruby-1.9.2-p320/bin/ruby
# Question 30:
# Suprisingly there are only three numbers that can be written as the sum of the fourth powers of their digits
# 1634, 8208, 9474
# 1**4 is not included
# the sum of these numbers is 1634 + 8208 + 9474 = 19316

# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits

# puts "hi"
# results = []

# (2..250_000).each do |num|
# 	sum = 0
# 	num.to_s.chars do |n|
# 		sum += (n.to_i**5)
# 	end

# 	results.push(sum) if ( sum == num )
# end

list = []
(2..250_000).each do |n|
	list << n if 
end

puts "Sum of Numbers: ", results.inject(:+), ""
puts "Array:", results

# Produced results

# Euler  time ./30.rb
# hi
# Sum of Numbers: 
# 443839

# Array:
# 4150
# 4151
# 54748
# 92727
# 93084
# 194979
# ./30.rb  623.94s user 0.54s system 100% cpu 10:23.84 total

# For better algorithm: fix the max upper limit 
# The maximum value for one digit is 9^5 = 59049. We can find out the maximum possible sum for a given number of digits by multiplying 59049 with the number of digits.
# Let's say we're gonna check the number 123456789. That's 9 digits, 
# so the maximum sum would be 9*59049 = 531441, which doesn't even come close to 123456789.
# So we know we can forget about any number 9-digit number because 
# we'll never be able to reach a big enough sum. 
# And it'll only get worse with larger numbers