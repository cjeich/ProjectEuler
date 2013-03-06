#! /Users/ceich/.rvm/rubies/ruby-1.9.2-p320/bin/ruby

# Let d(n) be defined as the sum of proper divisors of n 
#  (numbers less than n which divide evenly into n).
#
# If d(a) = b and d(b) = a, where a != b, then a and b are an amicable pair and each of a and b 
#  are called amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. 
# The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.
# TODO: Memoize divisors list so we don't recalculate

# version 1
# Output #1
# calculating...
# Total Number of Amicable Pairs:
# 2470
# Sum of amicable numbers: 
# 20778
# ./21.rb  0.46s user 0.00s system 99% cpu 0.464 total
# WRONG ANSWER

# Version 1.1
# calculating...
# Total Number of Amicable Pairs:
# 10
# Sum of amicable numbers: 
# 31626
# Array:
# 220
# 284
# 1184
# 1210
# 2620
# 2924
# 5020
# 5564
# 6232
# 6368
# ./21.rb  0.46s user 0.00s system 99% cpu 0.466 total

#issues: Still need to add memoization, also adding numbers to array twice. Not sure why

divisorList = {} # hash with number => [divisors 1..n]
$divisors = {}
puts "calculating..."

def getDivisors(num)
	ret = [1]
	max = Math.sqrt(num).floor + 1
	(2..max).each do |div|
		if ( (num % div) == 0 )
			ret.push(div, num/div)
		end
	end

	return ret.sort.uniq
end

# Loop through each number
checked = [] # array of numbers we've already looked up
amicables = []

# Evaluate all numbers up to 10,000
(1..100000).each do |num|
next if checked.include?(num)

# get sum of divisors
sum1 = getDivisors(num).inject(:+)
num2 = sum1

sum2 = getDivisors(num2).inject(:+)

amicables.push(num, num2) if ( (sum1 == num2) && (num === sum2)  && (num != num2) ) 

#puts num, "Divisor List:", getDivisors(num), "", ""
# next if divisorList.keys.include?(num)
# Get all Divisors for the number 

# Name list 

end

amicables.uniq!

puts "Total Number of Amicable Pairs:" , amicables.length
puts "Sum of amicable numbers: ", amicables.inject(:+) 
puts "Array:", amicables.sort!
