# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Api::V1::Register.destroy_all
register1 = Api::V1::Register.new(first_name: "Sebastián", last_name: "Aristizábal Suárez", gender: "masculino", birth_date: "1992/4/7", email: "sebastinn@hotmail.com", description: "cordial saludo, me gustaría pertenecer a su empresa y su equipo de trabajo", address: "Calle X 30A-50", country: "Colombia", department: "Antioquia", city: "Medellín", apartment: "apt 501")
register1.save!
register1 = Api::V1::Register.new(first_name: "Andres", last_name: "ibañez Escobar", gender: "masculino", birth_date: "1980/4/7", email: "andres@hotmail.com", description: "ola que debo acer para cer parte de zu corporación????", address: "Calle X 100A-50", country: "Colombia", department: "Valle del cauca", city: "Cali", apartment: "es casa")
register1.save!
puts "Register created"
