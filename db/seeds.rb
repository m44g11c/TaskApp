# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 t1 = Project.create(name: "Beaches")
Task.create(title: "Test Task 1", description: "XX-XX-XX", status: "XX-XX-XX", project_id: t1.id)
Task.create(title: "Test Task 1", description: "XX-XX-XX", status: "XX-XX-XX", project_id: t1.id)
Task.create(title: "Test Task 1", description: "XX-XX-XX", status: "XX-XX-XX", project_id: t1.id)

t2 = Project.create(name: "History")
Task.create(title: "Test Task 1", description: "XX-XX-XX", status: "XX-XX-XX", project_id: t2.id)
Task.create(title: "Test Task 1", description: "XX-XX-XX", status: "XX-XX-XX", project_id: t2.id)
Task.create(title: "Test Task 1", description: "XX-XX-XX", status: "XX-XX-XX", project_id: t2.id)