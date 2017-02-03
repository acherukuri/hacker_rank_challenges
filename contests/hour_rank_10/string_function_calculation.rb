#!/bin/ruby
require 'pry'

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)
e = 100
# binding.pry
(0...c.length).step(k) do |index|
  if c[index].zero?
    e -= 1
  else
    e = e - 3
  end
end
puts e
