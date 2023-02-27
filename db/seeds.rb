puts "🌱 Seeding data..."
# run a loop 50 times
50.times do
    # create a game with random data
    product = Product.create(
      name: Faker::Commerce.product_name,
      price: rand(0..60), # random number between 0 and 60
    )
  
    # # create between 1 and 5 reviews for each product
    rand(1..5).times do
      Review.create(
        product_id: product.id,
        star_rating: rand(1..5),
        comment: Faker::Lorem.sentence         
      )
    end
  end
  # create users
  50.times do
    user = User.create(
      name: Faker::Name.name
    )
  end

  # User#reviews
  user1 = User.first
  review2 = Review.second
  user1.reviews << review2

  user2 = User.second
  review1 = Review.first
  user2.reviews << review1
  
puts "🌱 Done seeding!"