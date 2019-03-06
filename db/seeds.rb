# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'creating teacher'
Attendance.destroy_all
Lesson.destroy_all
Teacher.destroy_all
Student.destroy_all

teacher = Teacher.create!(
  first_name: "Mike",
  last_name: "Frantz",
  email: "mike@lewagon.com",
  password: "secret"
)

Lesson.create!(
  learning_goal: "Talk about pets",
  time_goal: 120,
  start_time: Time.now,
  end_time: Time.now,
  completed: true,
  # teacher_id: 1
  teacher: Teacher.all.sample
)

Lesson.create!(
  learning_goal: "Talk about hobbies",
  time_goal: 120,
  start_time: Time.now,
  end_time: Time.now,
  completed: false,
  # teacher_id: 1
  teacher: Teacher.all.sample
)

Student.create!(
  first_name: "Miyuki",
  last_name: "Suzuki",
  birth_date: Date.new,
  email: "miyuki@suzuki.com",
  password: "secret",
  student_number: 1
)

Student.create!(
  first_name: "Mana",
  last_name: "Kuriya",
  birth_date: Date.new,
  email: "mana@kuriya.com",
  password: "secret",
  student_number: 2
)


Student.create!(
  first_name: "Shinichi",
  last_name: "Kurimoto",
  birth_date: Date.new,
  email: "shinichi@kurimoto.com",
  password: "secret",
  student_number: 3
)

Student.create!(
  first_name: "Yuya",
  last_name: "Mano",
  birth_date: Date.new,
  email: "yuya@mano.com",
  password: "secret",
  student_number: 4
)

Student.create!(
  first_name: "Genki",
  last_name: "Kojima",
  birth_date: Date.new,
  email: "genki@kojima.com",
  password: "secret",
  student_number: 5
)

Student.create!(
  first_name: "Nanae",
  last_name: "Matsumura",
  birth_date: Date.new,
  email: "nanae@matsumura.com",
  password: "secret",
  student_number: 6
)

Student.create!(
  first_name: "Mitsuyuki",
  last_name: "Ohara",
  birth_date: Date.new,
  email: "mitsuyuki@ohara.com",
  password: "secret",
  student_number: 7
)

Student.create!(
  first_name: "Arata",
  last_name: "Sugimoto",
  birth_date: Date.new,
  email: "arata@sugimoto.com",
  password: "secret",
  student_number: 7
)

Student.create!(
  first_name: "Riona",
  last_name: "Kurumado",
  birth_date: Date.new,
  email: "riona@kurumado.com",
  password: "secret",
  student_number: 8
)

Student.create!(
  first_name: "Ayako",
  last_name: "Goto",
  birth_date: Date.new,
  email: "ayako@goto.com",
  password: "secret",
  student_number: 9
)

Student.create!(
  first_name: "Yuka",
  last_name: "Baba",
  birth_date: Date.new,
  email: "yuka@baba.com",
  password: "secret",
  student_number: 10
)

Student.create!(
  first_name: "Chieko",
  last_name: "Bando",
  birth_date: Date.new,
  email: "chieko@bando.com",
  password: "secret",
  student_number: 11
)

Student.create!(
  first_name: "Daisuke",
  last_name: "Yano",
  birth_date: Date.new,
  email: "daisuke@yano.com",
  password: "secret",
  student_number: 12
)

Student.create!(
  first_name: "Rie",
  last_name: "Yamaguchi",
  birth_date: Date.new,
  email: "rie@yamaguchi.com",
  password: "secret",
  student_number: 13
)

Student.create!(
  first_name: "Keita",
  last_name: "Yoshida",
  birth_date: Date.new,
  email: "keita@yoshida.com",
  password: "secret",
  student_number: 14
)

Student.create!(
  first_name: "Tomoe",
  last_name: "Okino",
  birth_date: Date.new,
  email: "tomoe@Okino.com",
  password: "secret",
  student_number: 15
)

Student.create!(
  first_name: "Shohei",
  last_name: "Kikutani",
  birth_date: Date.new,
  email: "shohei@kikutani.com",
  password: "secret",
  student_number: 16
)

Student.create!(
  first_name: "Eiichi",
  last_name: "Nambu",
  birth_date: Date.new,
  email: "eiichi@ynambu.com",
  password: "secret",
  student_number: 17
)

Student.create!(
  first_name: "Yoshihiko",
  last_name: "Yamamoto",
  birth_date: Date.new,
  email: "yoshihiko@yamamoto.com",
  password: "secret",
  student_number: 18
)

Student.create!(
  first_name: "Hanako",
  last_name: "Nakagawa",
  birth_date: Date.new,
  email: "hanako@nakagawa.com",
  password: "secret",
  student_number: 19
)

Student.create!(
  first_name: "Hideki",
  last_name: "Asano",
  birth_date: Date.new,
  email: "toshiyuki@asano.com",
  password: "secret",
  student_number: 20
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)

Attendance.create!(
  student: Student.all.sample,
  lesson: Lesson.all.sample,
  presence: true
)




