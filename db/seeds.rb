puts "eliminando instancias"

Account.destroy_all
Category.destroy_all
Transaction.destroy_all
User.destroy_all


puts "creando usuarios"
user1 = User.create(full_name: "Alexandra", email: "alexa@gmail.com", password: "123456")
user2 = User.create(full_name: "Andres", email: "andres@gmail.com", password: "123456")
user3 = User.create(full_name: "Mateo", email: "mateo@gmail.com", password: "123456")
user4 = User.create(full_name: "Daniela", email: "daniela@gmail.com", password: "123456")
user5 = User.create(full_name: "Linda",  email: "linda@gmail.com", password: "123456")

puts "Usuarios creados"
