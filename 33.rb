#! /Users/ceich/.rvm/rubies/ruby-1.9.2-p320/bin/ruby

# The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting 
#   to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, 
#   is obtained by cancelling the 9s.
# We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

# There are exactly four non-trivial examples of this type of fraction, 
#   less than one in value, and containing two digits in the numerator and denominator.

# If the product of these four fractions is given in its lowest common terms, 
#   find the value of the denominator.

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

(10..99).each do |top|
	(10..99).each do |bottom|
		# Fraction must be less than 1	
		next if (top > bottom)

		


	end
end
