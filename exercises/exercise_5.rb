require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@sum = Store.all.sum(:annual_revenue)
puts "Sum of all stores:"
pp @sum

@avg = @sum / Store.count
puts "Avg of all stores:"
pp @avg

@num = Store.where("annual_revenue >= ?", 1000000).size
puts "Number of stores with 1M$:"
pp @num