# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning Database'
User.delete_all
Interview.delete_all
Video.delete_all
Review.delete_all

# users
puts 'Creating users'
maria = User.new(email: "maria@lescreen.com", password: "123456")
maria.save!

# Interview
puts 'Creating Interviews'
one = Interview.new(open_date: "19/11/2020", final_date: "25/11/2020", user: maria)
one.save!

# Videos
puts 'Creating Videos'
video_one = Video.new(name: "name1", interview: one)
video_one.save!

# Review
puts 'Creating Reviews'
review_one = Review.new(rating: "5", comment: "stars", video: video_one, user:maria)
review_one.save!

#done
puts 'Its alright'