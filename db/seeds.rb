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
    review: 'This teacher is a saint!',
    school: 'PS1',
    stars: 5,
    teacher_id: 1
  },
  {
    review: 'The bestest teacher!',
    school: 'PS2',
    stars: 5,
    teacher_id: 2
  },
  {
    review: 'The greatest teacher!',
    school: 'PS3',
    stars: 5,
    teacher_id: 3
  },
  {
    review: 'Amazing!',
    school: 'PS4',
    stars: 5,
    teacher_id: 4
  },
  {
    review: 'One of a kind!',
    school: 'PS5',
    stars: 5,
    teacher_id: 5
  }
])


Student.create!([
  {
    first_name: 'Charles',
    last_name: 'Tuck'
  },
  {
    first_name: 'Junior',
    last_name: 'Rowe'
  },
  {
    first_name: 'Suzanne',
    last_name: 'Surratt'
  },
  {
    first_name: 'John',
    last_name: 'Tillman'
  },
  {
    first_name: 'Dorthy',
    last_name: 'Hines'
  }
])


