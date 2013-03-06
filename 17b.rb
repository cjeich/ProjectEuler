#! /Users/ceich/.rvm/rubies/ruby-1.9.2-p320/bin/ruby

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

require 'numbers_and_words'

str = ""

I18n.with_locale(:en) do
	(1..1000).each do |num|
		puts num.to_words
		str << num.to_words.gsub(/[^a-zA-Z]/, "")
		str << "and" if (num > 100 &&  ( (num % 100) > 0) ) 
	end
end

puts str
puts "Final Count: #{str.length}"