# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.create(name: "Banana", price: 0.50, image_path: "filler", description: "a ripe banana")

# Product.create(name: "Tide Pods", price: 18, image_path: "filler", description: "laundry detergent vessel")

# Product.create(name: "Xbox", price: 100, image_path: "filler", description: "home gaming system")

# Product.create(name: "Hair Brush", price: 2, image_path: "filler", description: "hair detangling tool")

# Product.create(name: "Dog Toy", price: 4, image_path: "filler", description: "durable squeaky toy for dogs")

# Category.create!(
#   [{ name: "Fruit" },
#    { name: "Electronics" },
#    { name: "Laundry" },
#    { name: "Toys" },
#    { name: "Cosmetics" },
#    { name: "Plants" }]
# )

CategoryProduct.create!(
  [
    { product_id: 1, category_id: 1 },
    { product_id: 3, category_id: 2 },
    { product_id: 10, category_id: 2 },
    { product_id: 2, category_id: 3 },
    { product_id: 3, category_id: 4 },
    { product_id: 5, category_id: 4 },
    { product_id: 11, category_id: 4 },
    { product_id: 7, category_id: 5 },
    { product_id: 8, category_id: 6 },
    { product_id: 9, category_id: 6 },
  ]
)
