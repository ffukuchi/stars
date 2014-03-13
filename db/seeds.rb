# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#


Post.create!([
  {
    student_id: 1,
    teacher_id: 1,
    comment: 'AB was the best teacher!'
  },
  {
    student_id: 2,
    teacher_id: 2,
    comment: 'BC was the best teacher!'
  },
  {
    student_id: 3,
    teacher_id: 3,
    comment: 'CD was the best teacher!'
  },
])


Teacher.create!([
  {
    first_name: 'Connie',
    last_name: 'Walsh',
    school_id: 10,
    stars: 20 
  },
  {
    first_name: 'Allen',
    last_name: 'Smith',
    school_id: 11,
    stars: 19 
  },
  {
    first_name: 'Karen',
    last_name: 'Stanton',
    school_id: 12,
    stars: 18 
  },
  {
    first_name: 'Pam',
    last_name: 'Fuhr',
    school_id: 13,
    stars: 17 
  },
  {
    first_name: 'Lisa',
    last_name: 'Green',
    school_id: 14,
    stars: 16 
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


School.create!([
  {
    state: 'NY',
    district: 'New York City'
  },
  {
    state: 'NY',
    district: 'New York City'
  },
  {
    state: 'NY',
    district: 'New York City'
  },
  {
    state: 'NY',
    district: 'New York City'
  },
  {
    state: 'NY',
    district: 'New York City'
  }
])


