# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'json'
# require 'open-uri'
Cocktail.destroy_all
Dose.destroy_all
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

c1= Cocktail.create(name: "Singapore Sling", remote_image_url: "https://res.cloudinary.com/fangb/image/upload/v1574391352/cocktail/photo-1551734322-f43b0798585a_q1suf4.jpg")

c2= Cocktail.create(name: "Negroni", remote_image_url: "https://res.cloudinary.com/fangb/image/upload/v1574393407/cocktail/olena-sergienko-JjGLEN7T8xI-unsplash_lb1d9k.jpg")

c3=Cocktail.create(name: "Gin Martini", remote_image_url: "https://res.cloudinary.com/fangb/image/upload/v1574393404/cocktail/photo-1544145945-f90425340c7e_b7mnmy.jpg")

i1= Ingredient.create(name: "Lemon")
i2= Ingredient.create(name: "Campari")
i3= Ingredient.create(name: "gin")
i4= Ingredient.create(name: "orange")
i5= Ingredient.create(name: "vodka")
i6= Ingredient.create(name: "vanilla extract")
i7= Ingredient.create(name: "Grand Marnier")
i8= Ingredient.create(name: "Tea")
i9= Ingredient.create(name: "sugar syrup")
i10= Ingredient.create(name: "mint leaves")
i11= Ingredient.create(name: "soda water")
i12= Ingredient.create(name: "lime")
i13= Ingredient.create(name: "red wine")
i14= Ingredient.create(name: "fruits")


# 6.times do
#   c = Cocktail.create!(name: Faker::Name.unique.name,
#                        image: "https://source.unsplash.com/270x300/?cocktail")
#   i = Ingredient.create(name: Faker::Dessert.flavor)
#   Dose.create!(description: Faker::Food.description,
#                cocktail: c, ingredient: i)

# end

d1 = Dose.create!(description: "2 shots of lemon", cocktail: c1, ingredient: i1)
# c1 = Cocktail.create(name: "Mojito" )
# c2 = Cocktail.create(name: "ILT" )
# Dose.create!(description: "2 shots of lemon", cocktail: c1, ingredient: i1)
# Dose.create!(description: "2 shots of lemon", cocktail: c2, ingredient: i1)

puts "total Cocktails #{Cocktail.count}"
puts "total Ingredients #{Ingredient.count}"
puts "total Doses #{Dose.count}"
