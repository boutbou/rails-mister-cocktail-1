# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts 'Creating 20 fake cocktails...'
20.times do
  cocktail = Cocktail.new(
    name:    Faker::Food.dish
  )
  cocktail.save!
end
puts 'Cocktails Finished!'

puts 'Creating 20 fake ingredients...'
20.times do
  ingredient = Ingredient.new(
    name:    Faker::Food.ingredient
  )
  ingredient.save!
end
puts 'ingredients Finished!'
puts 'doses Finished!'
