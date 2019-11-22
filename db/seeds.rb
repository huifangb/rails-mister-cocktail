# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'json'
# require 'open-uri'
Ingredient.destroy_all

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredient_serialized = open(url).read
# ingredients = JSON.parse(ingredient_serialized)

# ingredients["drinks"].each do |ingredient|
#   Ingredient.create(name: ingredient["strIngredient1"])
# end

# puts "#{Ingredient.count}"
# i1 = Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
6.times do
  c = Cocktail.create!(name: Faker::Name.unique.name,
                       image: "https://source.unsplash.com/270x300/?cocktail")
  i = Ingredient.create(name: Faker::Dessert.flavor)
  Dose.create!(description: Faker::Food.description,
               cocktail: c, ingredient: i)

end


# c1 = Cocktail.create(name: "Mojito" )
# c2 = Cocktail.create(name: "ILT" )
# Dose.create!(description: "2 shots of lemon", cocktail: c1, ingredient: i1)
# Dose.create!(description: "2 shots of lemon", cocktail: c2, ingredient: i1)

puts "total Cocktails #{Cocktail.count}"
puts "total Ingredients #{Ingredient.count}"
puts "total Doses #{Dose.count}"
