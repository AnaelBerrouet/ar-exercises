require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store1 = Store.create name: "Surrey", annual_revenue: 224000, mens_apparel: true, womens_apparel: true
store2 = Store.create name: "Whistler", annual_revenue: 1900000, mens_apparel: false, womens_apparel: true
store3 = Store.create name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: false

puts "The number of store in 'Stores': #{Store.count()}"
puts ""

@mens_stores = Store.where(mens_apparel: true)

puts "Men's apparel stores:"
@mens_stores.each do |store|
  puts "#{store.name} : #{store.annual_revenue}$"
end
puts ""

@womens_stores = Store.where("womens_apparel = ? AND annual_revenue <= ?", true, 1000000)

puts "Women's apparel stores:"
@womens_stores.each do |store|
  puts "#{store.name} : #{store.annual_revenue}$"
end
puts ""