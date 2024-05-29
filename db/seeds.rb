puts "Cleaning Database 🧼"
User.destroy_all

User.create(email: 'emma@test.com', password: '123456', admin: true)
User.create(email: 'josh@test.com', password: '123456', admin: false)

puts "Created #{User.count} Users 👻"
puts "Database is ready 🌱🌱🌱"
