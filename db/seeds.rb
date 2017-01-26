# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movies = [
  {title: "Alladin", release_date: '25-Nov-1992'},
  {title: "When Harry Met Sally", release_date: '21-Jul-1989'},
  {title: "The Help", release_date: '10-Aug-2011'},
  {title: "Raiders of the lost Ark", release_date: '12-Jun-1981'},
]

movies.each do |movie|
  Movie.create!(movie)
end


actor = [
  {name: "Angelina Jolie", gender: "female", birthdate: "4-Jun-1975", country: "US"},
  {name: "Will Smith", gender: "male", birthdate: "25-Sep-1968", country: "US"},
  {name: "Margot Robbie", gender: "female", birthdate: "2-Jul-1990", country: "US"},
]

movies.each do |actor|
  Actor.create!(actor)
end

director = [
  {name: "Quentin tarantino", gender: "male", birthdate: "27-03-1963", country: "US"},
  {name: "Mel Gibson", gender: "male", birthdate: "3-Jan-1956", country: "US"},
]

movies.each do |director|
  Director.create!(director)
end
