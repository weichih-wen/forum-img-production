# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Category

Category.destroy_all

category_list =[
  { name: "Chinese cuisine" },
  { name: "Japanese cuisine" },
  { name: "Italian cuisine" },
  { name: "Mexican cuisine" },
  { name: "Vegetarian cuisine" },
  { name: "American cuisine" },
  { name: "Fusion cuisine" }
]

category_list.each do |category|
  Category.create( name: category[:name] )
end
puts "Category created!"

# Default admin

User.create(email: "root@example.com", password: "12345678", role: "admin", name: "root")
puts "Default admin created!"
