# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "Banana", price: 0.50, image_path: "filler", description: "a ripe banana")

Product.create(name: "Tide Pods", price: 18, image_path: "filler", description: "laundry detergent vessel")

Product.create(name: "Xbox", price: 100, image_path: "filler", description: "home gaming system")

Product.create(name: "Hair Brush", price: 2, image_path: "filler", description: "hair detangling tool")

Product.create(name: "Dog Toy", price: 4, image_path: "filler", description: "durable squeaky toy for dogs")
