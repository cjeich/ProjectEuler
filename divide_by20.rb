#!/usr/bin/env ruby

def divisible_by_20?(num)
  divisible_nums = [1..20]
  
  divisible_nums.each do |num, div_num|
    if div_num%num != 0
      return false
    
    elsif {return true}
  end
  
end

big_num = 20

unless divisible_by_20?(big_num)
  big_num += big_num
end

puts big_num


