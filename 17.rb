#! /Users/ceich/.rvm/rubies/ruby-1.9.2-p320/bin/ruby

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

puts "Hai. Now Im calculating numbers"

 ones = {
 			1 => "one",
 			2 => "two",
 			3 => "three",
 			4 => "four",
 			5 => "five",
 			6 => "six",
 			7 => "seven",
 			8 => "eight",
 			9 => "nine"
		}

teens = {
			10 => "ten",
			11 => "eleven",
			12 => "twelve",
			13 => "thirteen",
			14 => "fourteen",
			15 => "fifteen",
			16 => "sixteen",
			17 => "seventeen",
			18 => "eighteen",
			19 => "nineteen"
		}

tens = {
			20 => "twenty",
			30 => "thirty",
			40 => "fourty",
			50 => "fifty",
			60 => "sixty",
			70 => "seventy",
			80 => "eighty",
			90 => "ninety"
	   }

str = "";

(1..1000).each do | number |
	puts number

	case number
		when 1..9
			str = str + ones[number]
		when 10..19
			str = str + teens[number]
		when 20..99
				onesDigit = number.to_s()[1].to_i
				tensDigit = number.to_s()[0].to_i * 10
			if onesDigit > 0 
				str = str + tens[tensDigit] + ones[onesDigit]
			else 
				str = str + tens[tensDigit]
			end
		when 100..999
				onesDigit = number.to_s()[2].to_i
				tensDigit = number.to_s()[1].to_i * 10
				hundredsDigit = number.to_s[0].to_i 

				# First calculate the number of hundreds
				str = str + ones[hundredsDigit] + "hundred" + ((tensDigit > 0 || onesDigit > 0)? "and" : "") 

				#then add the tens or ones modifier
				puts "Tens Digit #{tensDigit}"
				case tensDigit
				when 20..90
					# puts 'tens'
					# puts tens[tensDigit] + ((onesDigit > 0)? ones[onesDigit] : "")
					str = str + tens[tensDigit] + ((onesDigit > 0)? ones[onesDigit] : "")
				when 10
					# puts "elevens"
					# puts ((tensDigit + onesDigit).to_i)
					# puts teens[((tensDigit + onesDigit).to_i)]
					str = str + teens[((tensDigit + onesDigit).to_i)]
				when 0
					str = str + (ones[onesDigit].nil? ? "" : ones[onesDigit])
				end

		when 1000
			str = str + "one" + "thousand"
		end
		puts str
end

puts "Count: " + str.length.to_s