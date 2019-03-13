image_data1 = File.read('app/assets/images/Student_1.jpg')
image_data2 = File.read('app/assets/images/Student_2.jpg')
image_data3 = File.read('app/assets/images/Student_3.jpg')
image_data4 = File.read('app/assets/images/Student_4.jpg')
image_data5 = File.read('app/assets/images/Student_5.jpg')
image_data6 = File.read('app/assets/images/Student_6.jpg')
image_data7 = File.read('app/assets/images/Student_7.jpg')
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'destroying time trials'
TimeTrial.destroy_all
puts 'destroying lessons'
Lesson.destroy_all
puts 'destroying students'
Student.destroy_all
puts 'destroying attendances'
Attendance.destroy_all
puts 'destroying teachers'
Teacher.destroy_all




puts 'creating teacher'

teacher = Teacher.create!(

  first_name: "James",
  last_name: "Devereux",
  email: "james@devereux.com",
  password: "secret"
)

puts 'teacher created'

puts 'creating courses'

course_one = Course.create!(
  name: "English Communication A",
  description: "1st year English speaking class",
  school: "Kanto Gakuin University",
  teacher: Teacher.all.sample
  )

course_two = Course.create!(
  name: "English Communication B",
  description: "2nd year English speaking class",
  school: "Kanto Gakuin University",
  teacher: Teacher.all.sample
  )

puts 'courses created!'

puts 'creating 2 lessons'

Lesson.create!(
  learning_goal: "Talk about pets",
  time_goal: 30,
  start_time: Time.now,
  end_time: Time.now,
  completed: true,
  # teacher_id: 1
  teacher: Teacher.all.sample,
  course_id: course_one.id
)

Lesson.create!(
  learning_goal: "Talk about hobbies",
  time_goal: 30,
  start_time: Time.now,
  end_time: Time.now,
  completed: false,
  # teacher_id: 1
  teacher: Teacher.all.sample,
  course_id: course_one.id
)

puts '2 lesson created'

puts 'creating 20 students'

Student.create!(
  first_name: "Mike",
  last_name: "Frantz",
  birth_date: Date.new,
  email: "mike@frantz.com",
  password: "secret",
  student_number: "1",
  photo: File.open("./app/assets/images/Student_2.jpg"),
  course_id: course_one.id
)

# rescue => error
# puts error

Student.create!(
  first_name: "Mana",
  last_name: "Kuriya",
  birth_date: Date.new,
  email: "mana@kuriya.com",
  password: "secret",
  student_number: "2",
  photo: File.open("./app/assets/images/Student_2.jpg"),
  course_id: course_one.id

)


Student.create!(
  first_name: "Shinichi",
  last_name: "Kurimoto",
  birth_date: Date.new,
  email: "shinichi@kurimoto.com",
  password: "secret",
  student_number: "3",
  photo: File.open("./app/assets/images/Student_3.jpg"),
  course_id: course_one.id

)

Student.create!(
  first_name: "Yuya",
  last_name: "Mano",
  birth_date: Date.new,
  email: "yuya@mano.com",
  password: "secret",
  student_number: "4",
  photo: File.open("./app/assets/images/Student_4.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Genki",
  last_name: "Kojima",
  birth_date: Date.new,
  email: "genki@kojima.com",
  password: "secret",
  student_number: "5",
  photo: File.open("./app/assets/images/Student_5.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Nanae",
  last_name: "Matsumura",
  birth_date: Date.new,
  email: "nanae@matsumura.com",
  password: "secret",
  student_number: "6",
  photo: File.open("./app/assets/images/Student_6.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Mitsuyuki",
  last_name: "Ohara",
  birth_date: Date.new,
  email: "mitsuyuki@ohara.com",
  password: "secret",
  student_number: "7",
  photo: File.open("./app/assets/images/Student_7.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Arata",
  last_name: "Sugimoto",
  birth_date: Date.new,
  email: "arata@sugimoto.com",
  password: "secret",
  student_number: "8",
  photo: File.open("./app/assets/images/Student_7.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Riona",
  last_name: "Kurumado",
  birth_date: Date.new,
  email: "riona@kurumado.com",
  password: "secret",
  student_number: "9",
  photo: File.open("./app/assets/images/Student_7.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Ayako",
  last_name: "Goto",
  birth_date: Date.new,
  email: "ayako@goto.com",
  password: "secret",
  student_number: "10",
  photo: File.open("./app/assets/images/Student_7.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Yuka",
  last_name: "Baba",
  birth_date: Date.new,
  email: "yuka@baba.com",
  password: "secret",
  student_number: "11",
  photo: File.open("./app/assets/images/Student_7.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Daisuke",
  last_name: "Yano",
  birth_date: Date.new,
  email: "daisuke@yano.com",
  password: "secret",
  student_number: "12",
  photo: File.open("./app/assets/images/Student_6.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Rie",
  last_name: "Yamaguchi",
  birth_date: Date.new,
  email: "rie@yamaguchi.com",
  password: "secret",
  student_number: "13",
  photo: File.open("./app/assets/images/Student_6.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Keita",
  last_name: "Yoshida",
  birth_date: Date.new,
  email: "keita@yoshida.com",
  password: "secret",
  student_number: "14",
  photo: File.open("./app/assets/images/Student_5.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Tomoe",
  last_name: "Okino",
  birth_date: Date.new,
  email: "tomoe@Okino.com",
  password: "secret",
  student_number: "15",
  photo: File.open("./app/assets/images/Student_4.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Shohei",
  last_name: "Kikutani",
  birth_date: Date.new,
  email: "shohei@kikutani.com",
  password: "secret",
  student_number: "16",
  photo: File.open("./app/assets/images/Student_3.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Eiichi",
  last_name: "Nambu",
  birth_date: Date.new,
  email: "eiichi@ynambu.com",
  password: "secret",
  student_number: "17",
  photo: File.open("./app/assets/images/Student_2.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Yoshihiko",
  last_name: "Yamamoto",
  birth_date: Date.new,
  email: "yoshihiko@yamamoto.com",
  password: "secret",
  student_number: "18",
  photo: File.open("./app/assets/images/Student_2.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Hanako",
  last_name: "Nakagawa",
  birth_date: Date.new,
  email: "hanako@nakagawa.com",
  password: "secret",
  student_number: "19",
  photo: File.open("./app/assets/images/Student_4.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Hideki",
  last_name: "Asano",
  birth_date: Date.new,
  email: "toshiyuki@asano.com",
  password: "secret",
  student_number: "20",
  photo: File.open("./app/assets/images/Student_7.jpg"),
  course_id: course_one.id
)

Student.create!(
  first_name: "Ryo",
  last_name: "Fujiwara",
  birth_date: Date.new,
  email: "ryo@fujiwara.com",
  password: "secret",
  student_number: "23",
  photo: File.open("./app/assets/images/Student_7.jpg"),
  course_id: course_one.id
)

puts '20 students created'

puts 'creating 20 attendances'


Student.find_each do |student|
  attendance = Attendance.create!(
  student: student,
  lesson: Lesson.first)
end

Student.find_each do |student|
  attendance = Attendance.create!(
  student: student,
  lesson: Lesson.last)
end

Student.create!(
  first_name: "Keisuke",
  last_name: "Suzuki",
  birth_date: Date.new,
  email: "keisuke@suzuki.com",
  password: "secret",
  student_number: "21",
  photo: File.open("./app/assets/images/Student_7.jpg"),
  course_id: course_one.id
)


# puts '20 attendances created'
