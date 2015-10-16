# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t1 = ToDo.create!(task_name: "Visit grandma and bring her cookies", due_on: "2015-10-20", priority: 1, completed: false, user_id: 1)
t2 = ToDo.create!(task_name: "Mow the yard", due_on: "2015-10-25", priority: 2, completed: false, user_id: 1)
t3 = ToDo.create!(task_name: "Wash clothes and fold laundry", due_on: "2015-10-26", priority: 3, completed: false, user_id: 1)
t4 = ToDo.create!(task_name: "Cook authentic Cajun rice and beans", due_on: "2015-10-22", priority: 4, completed: false, user_id: 1)
t5 = ToDo.create!(task_name: "Run a half marathon", due_on: "2015-10-29", priority: 5, completed: false, user_id: 2)
t6 = ToDo.create!(task_name: "Call my wife and tell her I miss her", due_on: "2015-10-29", priority: 6, completed: false, user_id: 2)
t7 = ToDo.create!(task_name: "Build surfboard", due_on: "2015-10-30", priority: 7, completed: false, user_id: 2)
t8 = ToDo.create!(task_name: "Finish making Halloween costumes", due_on: "2015-10-31", priority: 8, completed: false, user_id: 2)

u1 = User.create!(name: "Ryan", email: "r@example.com", password: "password")
u2 = User.create!(name: "Ruti", email: "ruti@example.com", password: "password")
