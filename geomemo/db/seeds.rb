# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def string_for_guidelines
  "
  Add controllers to the app.
  Migrate models.
  Add seed data.
  Rake db:seed.
  Create views.
  "
end

Note.destroy_all
Notebook.destroy_all
Location.destroy_all

Notebook.create(name: "Personal")
Notebook.create(name: "Work")

Location.create(name: "Uncategorized", thumbnail: "../app/assets/images/thumbnails/uncategorized.jpg")
Location.create(name: "Kitchen", thumbnail: "../app/assets/images/thumbnails/kitchen.jpg")
Location.create(name: "Bedside Table", thumbnail: "../app/assets/images/thumbnails/bedside-table.jpg")
Location.create(name: "School", thumbnail: "../app/assets/images/thumbnails/school.jpg")
Location.create(name: "Back Pocket", thumbnail: "../app/assets/images/thumbnails/backpocket.jpg")
Location.create(name: "Bank", thumbnail: "../app/assets/images/thumbnails/bank.jpg")
Location.create(name: "Car", thumbnail: "../app/assets/images/thumbnails/car.jpeg")
Location.create(name: "Laptop", thumbnail: "../app/assets/images/thumbnails/laptop.jpg")

Note.create(title: "Grocery List", content: "General Tso's Chicken", nsfw: false, notebook_id: Notebook.find_by(name: "Personal").id, location_id: Location.find_by(name: "Kitchen").id)
Note.create(content: "Birthday card for bro", nsfw: false, notebook_id: Notebook.find_by(name: "Personal").id, location_id: Location.find_by(name: "Back Pocket").id)
Note.create(title: "Project Guidelines", content: string_for_guidelines, nsfw: false, notebook_id: Notebook.find_by(name: "Work").id, location_id: Location.find_by(name: "Laptop").id)

puts "Done seeding!"
