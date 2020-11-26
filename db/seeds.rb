# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning Database'
Review.delete_all
Candidate.delete_all
Question.delete_all
Video.delete_all
Interview.delete_all
User.delete_all


# users
puts 'Creating users'
maria = User.create(email: "maria@lescreen.com", password: "123456")

# Interview
puts 'Creating Interviews'
one = Interview.create(open_date: "19/11/2020", final_date: "25/11/2020", name:"CTO", company:"Twitter", user: maria)
two = Interview.create(open_date: "22/11/2020", final_date: "30/11/2020", name: "Full Stack", company: "LeWagon", user: maria)
three = Interview.create(open_date: "1/12/2020", final_date: "1/02/2021", name: "Chocolate Taster", company: "Milka", user: maria)
# Videos
puts 'Creating Videos'
video_one = Video.create(name: "Hire me!", interview: one)
video_two = Video.create(name: "I'm amazing", interview: two)
video_three = Video.create(name: "I know Chocolate better than anyone", interview: three)

#Candidates
puts 'Creating candidates'
jonny = Candidate.create(video_id: 1, first_name: "Jonny", last_name: "Davis", email: "jonny@davis.pt")
romano = Candidate.create(video_id: 2, first_name: "Romano", last_name: "Moesa", email: "romano@moesa.pt")
margarida = Candidate.create(video_id: 3, first_name: "Margarida", last_name: "Santos", email: "megui@santos.pt")

#Questions
puts  'Creating questions'
question_one = Question.create(question: "Introduce yourself in french", interview: one)

# Review
puts 'Creating Reviews'
review_one = Review.create(rating: "5", comment: "stars", video: video_one, user: maria)
review_one = Review.create(rating: "5", comment: "stars", video: video_two, user: maria)
review_one = Review.create(rating: "5", comment: "stars", video: video_three, user: maria)

#done
puts 'Its alright'