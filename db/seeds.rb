# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating cocktails and images"
Cocktail.destroy_all

Cocktail.create!(name: "White Russian", image_url: "https://3f4c2184e060ce99111b-f8c0985c8cb63a71df5cb7fd729edcab.ssl.cf2.rackcdn.com/media/15072/rainbowparadisecocktail.jpg")
Cocktail.create!(name: "Harvey Wallbanger", image_url: "https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
Cocktail.create!(name: "Gin n' Tonic", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSz811MrlNztw7k6SrcTy1jKlZKWWrli4RD9w&usqp=CAU")

puts "Creating ingredients"

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

puts "Creating doses"

Dose.create!(
    description: "6 Leaves",
    cocktail: Cocktail.all.sample,
    ingredient: Ingredient.all.sample)
Dose.create!(
    description: "1.5 oz",
    cocktail: Cocktail.all.sample,
    ingredient: Ingredient.all.sample)
Dose.create!(
    description: "9 cl",
    cocktail: Cocktail.all.sample,
    ingredient: Ingredient.all.sample)

puts "done"

