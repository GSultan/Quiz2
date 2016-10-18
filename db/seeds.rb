# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1000.times do
  Support.create({ name: Faker::GameOfThrones.character,
                    email: Faker::Internet.email,
                    department: Faker::GameOfThrones.house,
                    message: Faker::Hacker.say_something_smart,
                  
    })
end
