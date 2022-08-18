# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning db"
Restaurant.destroy_all

puts "Creating restaurants..."
pizza_east =  {name: "Pizza East", category: "chinese", address: "56A Shoreditch High St, London E1 6PQ"}
brulato = {name: "Brulato", category: "japanese", address: "Route de la soie"}
pizza_de_la_mama = {name: "Pizza de la Mama", category: "italian", address: "Le calien {impasse)"}
etrue = {name: "Etrue", category: "chinese", address: "14 rue Gitole"}
le_dolacien = {name: "Le dolacien", category: "french", address: "avenue Parisienne"}
epicure = {name: "Epicure", category: "french", address: "12 rue du Bristole"}

[pizza_east, brulato, pizza_de_la_mama, etrue, le_dolacien, epicure].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
