# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

25.times do
    Student.create(name: Faker::Name.name, age: rand(14..18), grade: rand(9..12))
end

75.times do
    Book.create(title: Faker::Book.title, genre: Faker::Book.genre, author: Faker::Book.author, summary: Faker::Quote.most_interesting_man_in_the_world)
end

50.times do
    Library.create(student: Student.all.sample, book: Book.all.sample)
end

