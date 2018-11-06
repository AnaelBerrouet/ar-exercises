require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.find(1)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store2 = Store.find(2)
@store2.employees.create(first_name: "Anael", last_name: "Berrouet", hourly_rate: 100)
@store2.employees.create(first_name: "Jeff", last_name: "E", hourly_rate: 1)

