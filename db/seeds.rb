# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#User.create(login: 'teste',email:'teste@teste.com',password: '123456')
#User.destroy_all
#User.create!(login: 'Julio Protzek', email: 'julio@startae.com.br', password: '123456')
r1 = Role.create({name: "Simple", description: "Can read, create yours quests and view tasks of your team when he is leader"})
r2 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})

u1 = User.create({login: "admin", email: "admin@dailymanager.com", password: "123456", password_confirmation: "123456", role_id: r1.id})