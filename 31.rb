#! /Users/ceich/.rvm/rubies/ruby-1.9.2-p320/bin/ruby

# In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

# 1p, 2p, 5p, 10p, ,20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:

# 1x£1 + 1x50p + 2x20p + 1x5p + 1x2p + 3x1p
# How many different ways can £2 be made using any number of coins?

values = {
	:1p => 1,
	:2p => 2,
	:5p => 5,
	:10p => 10,
	:20p => 20,
	:50p => 50,
	:1£ => 100,
	:2£ => 200
}

# Loop through each value find out how many 

def 