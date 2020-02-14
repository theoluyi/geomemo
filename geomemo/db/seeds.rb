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

Location.create(name: "Uncategorized", thumbnail: "/images/1_uncategorized_6.png")
Location.create(name: "Home", thumbnail: "/images/2_home_5.png")
Location.create(name: "Back Pocket", thumbnail: "/images/3_backpocket_5.png")
Location.create(name: "School Bag", thumbnail: "/images/4_school_bag_2.png")
Location.create(name: "Briefcase", thumbnail: "/images/5_briefcase_4.png")
Location.create(name: "Playground", thumbnail: "/images/6_playground_4.png")
Location.create(name: "Kitchen", thumbnail: "/images/8_kitchen_3.png")
Location.create(name: "Dreamland", thumbnail: "/images/7_dreamland_2.png")
Location.create(name: "Treasury", thumbnail: "/images/9_treasure_5.png")

Note.create(title: "Grocery List", content: "General Tso's Chicken", nsfw: false, notebook_id: Notebook.find_by(name: "Personal").id, location_id: Location.find_by(name: "Kitchen").id)
Note.create(content: "Birthday card for bro", nsfw: false, notebook_id: Notebook.find_by(name: "Personal").id, location_id: Location.find_by(name: "Back Pocket").id)
Note.create(title: "Project Guidelines", content: string_for_guidelines, nsfw: false, notebook_id: Notebook.find_by(name: "Work").id, location_id: Location.find_by(name: "School Bag").id)

puts "Done seeding!"
