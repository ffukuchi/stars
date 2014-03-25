# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

Teacher.create!([
  {
    first_name: 'Connie',
    last_name: 'Walsh',
    school: "PS1",
    grade: 5,
    subject: 'Language Arts'
  },
  {
    first_name: 'Allen',
    last_name: 'Smith',
    school: "IS2",
    grade: 6,
    subject: "Math"
  },
  {
    first_name: 'Karen',
    last_name: 'Stanton',
    school: "IS3",
    grade: 7,
    subject: "Social Studies"
  },
  {
    first_name: 'Pam',
    last_name: 'Fuhr',
    school: "IS4",
    grade: 8,
    subject: "Science"
  },
  {
    first_name: 'Lisa',
    last_name: 'Green',
    school: "High1",
    grade: "9",
    subject: "Algebra"
  }
])

Review.create!([
  {
    review: "The sweetest person ever. Great class she is so compassionate about everything she teaches and truly cares about every student. If you can get in this class you are one of the lucky ones!",
    school: 'PS1',
    city: 'NY',
    state: 'NY',
    stars: 5,
    teacher_id: 1,
    student_id: 5
  },
  {
    review: " Such a nice teacher. Had my whole class to his house to study for the exam and his family cooked us dinner. The nicest woman, I was so sad when the class was over. It's not an incredibly easy class but he does such a clear job of explaining everything. He won't let you fall behind. ",
    school: 'PS2',
    city: 'Los Angeles',
    state: 'CA',
    stars: 5,
    teacher_id: 2,
    student_id: 4
  },
  {
    review: " She truly loves each of her students. She is committed and is an incredible conductor. She expects your best every day, but only because she knows what we're capable of. Don't text or talk during class - focus and give it your all. ",
    school: 'PS3',
    city: 'Chicago',
    state: 'IL',
    stars: 5,
    teacher_id: 3,
    student_id: 3
  },
  {
    review: "  Great teacher, she was helpful and do anything to help a studnet understand an assignment. Loved the class.",
    school: 'PS4',
    city: 'Houston',
    state: 'TX',
    stars: 5,
    teacher_id: 4,
    student_id: 2
  },
  {
    review: " BEST teacher EVER!!! Very understandable and truly cares about her students passing.",
    school: 'PS5',
    stars: 5,
    city: 'Miami',
    state: 'FL',
    teacher_id: 5,
    student_id: 1
  }
])


Student.create!([
  {
    first_name: 'Charles',
    last_name: 'Tuck',
    email: 'charles.tuck@example.com',
    password: 'password',
    password_confirmation: 'password'
  },
  {
    first_name: 'Junior',
    last_name: 'Rowe',
    email: 'junior.rowe@example.com',
    password: 'password',
    password_confirmation: 'password'
  },
  {
    first_name: 'Suzanne',
    last_name: 'Surratt',
    email: 'suzanne.surratt@example.com',
    password: 'password',
    password_confirmation: 'password'
  },
  {
    first_name: 'John',
    last_name: 'Tillman',
    email: 'john.tillman@example.com',
    password: 'password',
    password_confirmation: 'password'
  },
  {
    first_name: 'Dorthy',
    last_name: 'Hines',
    email: 'dorthy.hines@example.com',
    password: 'password',
    password_confirmation: 'password'
  }
])
