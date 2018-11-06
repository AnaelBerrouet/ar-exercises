require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

#Store.find defaults to finding using the ID
@store1 = Store.find(1)
pp @store1
@store2 = Store.find(2)

@store1.name = "Guess Jeans"
@store1.save

pp @store1