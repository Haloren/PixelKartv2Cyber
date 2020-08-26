# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Miss Fuentes", email: "email@email.com", password: "password")
User.create(username: "Bunta", email: "email1@email1.com", password: "password")

Garage.create(name: "Tej's Garage")
Garage.create(name: "Takahashi Garage")

Kart.create(name: "Lightning", driver: "Knome", body: "Magnum", wheels: "White Star", garage_id: Garage.first.id, user_id: User.first.id)
Kart.create(name: "Magneto", driver: "Trooper", body: "Cytruck", wheels: "Solid", garage_id: Garage.first.id, user_id: User.second.id)
Kart.create(name: "Hachi-Go", driver: "Racer", body: "Panda", wheels: "Steele", garage_id: Garage.second.id, user_id: User.second.id)

Review.create(rating: 1, content: "Content 1, Review written here", user_id: User.first.id, kart_id: Kart.first.id)
Review.create(rating: 2, content: "Content 2, Review written here", user_id: User.second.id, kart_id: Kart.second.id)
Review.create(rating: 3, content: "Content 3, Review written here", user_id: User.second.id, kart_id: Kart.second.id)