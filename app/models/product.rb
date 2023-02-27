class Product < ActiveRecord::Base
   has_many :reviews
   has_many :users, through: :reviews

   # creates a new Review in the database associated with this Product and the User
   def leave_review(user, star_rating, comment)
        Review.create(user_id: user.id, star_rating: star_rating, comment: comment)
    end
    
end