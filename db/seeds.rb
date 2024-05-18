# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Cat.create(name: "Grayson", color: "tortoise", weight: 10, price: 20)
Cat.create(name: "Gotham", color: "black", weight: 9, price: 40)
Cat.create(name: "Joker", color: "grey", weight: 16, price: 56)
