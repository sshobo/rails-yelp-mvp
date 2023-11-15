# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restuarants..."
hakkasan = { name: "Hakkasan", category: "chinese", address: "Mayfair" }
prezzo = { name: "Prezzo", category: "italian", address: "Lakeside" }
wasabi = { name: "Wasabi", category: "japanese", address: "Embankment" }
zedel = { name: "Zedel Brassiere", category: "french", address: "Bank" }
cococure = { name: "Cococure", category: "belgian", address: "Algate East" }

[hakkasan, prezzo, wasabi, zedel, cococure].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
