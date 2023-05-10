# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Register.destroy_all
register1 = Register.new(first_name: "Sebastián", last_name: "Aristizábal Suárez", sex: description: "Las mejores colas de mono y Piscos de todo copiapó", address: "Calle de la Luna 13", city: "Copiapó", photo_url: "www.lewagon.com")
register1.save!
register2 = Register.new(name: "el tragadero", description: "las mejores butifarras", address: "calle 50", city: "medellín", photo_url: "www.lewagon.com")
register2.save!
puts "Restaurante creado"

t.string "first_name"
t.string "last_name"
t.string "sex"
t.date "birth_date"
t.string "email"
t.text "description"
t.string "address"
t.string "country"
t.string "department"
t.string "city"
t.string "apartment"
