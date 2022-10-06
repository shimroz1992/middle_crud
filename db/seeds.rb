# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: 'user1', password: '123456')
User.create(username: 'user2', password: '123456')
User.create(username: 'user3', password: '123456')
User.create(username: 'user4', password: '123456')
User.create(username: 'user5', password: '123456')

Task.create(task_name: 'task1', aim: 'aim1', user_id: User.first.id)
Task.create(task_name: 'task2', aim: 'aim1', user_id: User.first.id)
Task.create(task_name: 'task3', aim: 'aim1', user_id: User.first.id)

Task.create(task_name: 'task1', aim: 'aim1', user_id: User.last.id)
Task.create(task_name: 'task2', aim: 'aim1', user_id: User.last.id)
Task.create(task_name: 'task3', aim: 'aim1', user_id: User.last.id)



