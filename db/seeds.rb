# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'creating teacher'


Lesson.create!(
  learning_goal: "master conjugation",
  time_goal: "60 seconds",
  start_time: "12",
  end_time: "13",
  completed: false,
)

School.create!(
  name: "Waseda University",
  period: "1st",
  start_time: "9",
  end_time: "10",
  day: "Monday"
)



Teacher.create!(
  first_name: "James",
  last_name: "Shields",
  email: "james@james.com",
  password: "secret"
)



# Attendance.create! (
#   presence: true,
#   lateness: false
#   )



# Student.create! (
#   student_number: "1",
#   first_name: "Jun",
#   last_name: "Suzuki",
#   birth_date: "April 1st 2000",
#   email: "jun@suzuki.com",
#   password: "secret"
#   )
 # belongs_to :teacher
 #  has_many :attendances
 #  has_many :time_trials, through: :attendances
 #  validates :learning_goal, presence: true
 #  validates :time_goal, presence: true
 #  validates :start_time, presence: true
