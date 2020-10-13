Image.create!([
  {url: "https://cdn.the-scientist.com/assets/articleNo/42182/aImg/35036/bananas-thumb-s.png", product_id: 1},
  {url: "https://content.fortune.com/wp-content/uploads/2018/01/gettyimages-908914890.jpg", product_id: 2},
  {url: "https://i.pcmag.com/imagery/reviews/01IC0Vsz5N7nWcYIr69Ri4H-4.1569481393.fit_scale.size_1028x578.jpg", product_id: 3},
  {url: "https://target.scene7.com/is/image/Target/GUEST_fc447c64-4e83-49ef-b753-0e8af9a4fe8f?wid=488&hei=488&fmt=pjpeg", product_id: 4},
  {url: "https://cdn.shopify.com/s/files/1/0878/8258/products/FEN-KEL-01002540_5_Row_Olivewood_Hairbrush_with_Boar_Bristles_a42b0924-8be2-43aa-a2e3-538561a3dbbf_1024x1024.jpg?v=1554248132", product_id: 4},
  {url: "https://img.chewy.com/is/image/catalog/107698_MAIN._AC_SL1500_V1530915988_.jpg", product_id: 5},
  {url: "https://assets.petco.com/petco/image/upload/f_auto,q_auto/849383-center-1", product_id: 5},
  {url: "https://img.chewy.com/is/image/catalog/152810_Main._AC_SL1500_V1549654774_.jpg", product_id: 5},
  {url: "https://images-na.ssl-images-amazon.com/images/I/816DGwWT09L._SL1500_.jpg", product_id: 7},
  {url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/beautiful-groomed-womans-hands-with-nail-varnish-royalty-free-image-1574802937.jpg?crop=1.00xw:0.756xh;0,0.110xh&resize=1200:*", product_id: 7},
  {url: "https://cdn11.bigcommerce.com/s-uemzj79jf9/images/stencil/2048x2048/products/716/930/original__77940.1540988265.jpg?c=2", product_id: 8},
  {url: "https://images.homedepot-static.com/productImages/650dad71-acef-4031-a662-09a4f6f6b196/svn/house-plants-noepot006-64_1000.jpg", product_id: 8},
  {url: "https://asset.bloomnation.com/c_pad,d_vendor:global:catalog:product:image.png,f_auto,fl_preserve_transparency,q_auto/v1596763641/vendor/6046/catalog/product/2/0/20190611044908_file_5cffdb8458f29_5cffdb92e823d.jpg", product_id: 8},
  {url: "https://images-na.ssl-images-amazon.com/images/I/71AaOhG35oL._AC_SL1500_.jpg", product_id: 9},
  {url: "https://images-na.ssl-images-amazon.com/images/I/71cac2qE58L._AC_SL1500_.jpg", product_id: 9},
  {url: "https://ak1.ostkcdn.com/images/products/9669939/Apple-Original-Home-Charger-Adapter-USB-Cable-for-iPhone-5-5s-5c-6-6S-a2d3f33b-4966-43b1-8422-5fec924503f9.jpg", product_id: 10},
  {url: "https://cdn11.bigcommerce.com/s-jnapaiw/images/stencil/1280x1280/products/2945/4049/Sunny_duck__52036.1400093435.jpg?c=2", product_id: 11},
  {url: "https://images-na.ssl-images-amazon.com/images/I/610EksXe52L._SX355_.jpg", product_id: 11}
])
Category.create!([
  {name: "Fruit"},
  {name: "Electronics"},
  {name: "Laundry"},
  {name: "Toys"},
  {name: "Cosmetics"},
  {name: "Plants"}
])
Supplier.create!([
  {name: "Fruit Pickers", email: "fruitpickers@gmail.com", phone_number: "111-111-1111"},
  {name: "ELF Cosmetics", email: "elf@gmail.com", phone_number: "222-222-2222"},
  {name: "Amazon", email: "amazon@gmail.com", phone_number: "888-888-8888"}
])
CartedProduct.create!([
  {user_id: 1, product_id: 5, quantity: 2, status: "carted", order_id: nil},
  {user_id: 1, product_id: 7, quantity: 10, status: "carted", order_id: nil},
  {user_id: 1, product_id: 1, quantity: 8, status: "carted", order_id: nil},
  {user_id: 2, product_id: 5, quantity: 1, status: "purchased", order_id: 9},
  {user_id: 2, product_id: 11, quantity: 5, status: "purchased", order_id: 9},
  {user_id: 2, product_id: 9, quantity: 2, status: "purchased", order_id: 9},
  {user_id: 1, product_id: 3, quantity: 1, status: "removed", order_id: nil}
])
Product.create!([
  {name: "Dog Toy", price: "4.0", description: "durable squeaky toy for dogs", inventory: nil, supplier_id: 3},
  {name: "Pothos Plant", price: "8.0", description: "Live house plant", inventory: nil, supplier_id: 3},
  {name: "Xbox", price: "150.0", description: "home gaming system", inventory: nil, supplier_id: 3},
  {name: "Hair Brush", price: "2.0", description: "hair detangling tool", inventory: nil, supplier_id: 3},
  {name: "Plant pot", price: "20.0", description: "Home for your new plant", inventory: 3, supplier_id: 3},
  {name: "Rubber Ducky", price: "2.5", description: "A friend for bath time", inventory: 900, supplier_id: 3},
  {name: "iPhone Charger", price: "20.0", description: "Used to charge your phone", inventory: 3, supplier_id: 3},
  {name: "Finger Nail Polish", price: "2.0", description: "Paint to make your nails pretty", inventory: nil, supplier_id: 2},
  {name: "Banana", price: "0.5", description: "a ripe banana", inventory: 98, supplier_id: 1},
  {name: "Tide Pods", price: "18.0", description: "laundry detergent vessel", inventory: 20, supplier_id: 3},
  {name: "Coffee", price: "2.5", description: "Hot bean water", inventory: 25, supplier_id: 2},
  {name: "Desk Chair", price: "95.0", description: "A place to sit", inventory: 70, supplier_id: 3}
])
CategoryProduct.create!([
  {product_id: 1, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 10, category_id: 2},
  {product_id: 2, category_id: 3},
  {product_id: 3, category_id: 4},
  {product_id: 5, category_id: 4},
  {product_id: 11, category_id: 4},
  {product_id: 7, category_id: 5},
  {product_id: 8, category_id: 6},
  {product_id: 9, category_id: 6}
])
Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "108.0", tax: "7.56", total: "115.56"},
  {user_id: 1, subtotal: "3.0", tax: "0.27", total: "3.27"},
  {user_id: 1, subtotal: "12.0", tax: "1.08", total: "13.08"},
  {user_id: 1, subtotal: "3.0", tax: "0.21", total: "0.21"},
  {user_id: 2, subtotal: "56.5", tax: "5.09", total: "61.59"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"}
])
User.create!([
  {name: "Ben", email: "ben@gmail.com", password_digest: "$2a$12$cpZeVPogInR/SibKbpAaMOEVR1N3TSDCRhDSsHKWhuZIZ0Ef94djG", admin: false},
  {name: "Katrina", email: "katrina@gmail.com", password_digest: "$2a$12$9IwxY.y6DgHfRL9rR.7lpuhized7YxH7KgmFSVM8QShwxEbeW372q", admin: true}
])
