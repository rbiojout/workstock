# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Employee.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
WorkDay.create(name: 'Lundi')
WorkDay.create(name: 'Mardi')
WorkDay.create(name: 'Mercredi')
WorkDay.create(name: 'Jeudi')
WorkDay.create(name: 'Vendredi')
WorkDay.create(name: 'Samedi')
WorkDay.create(name: 'Dimanche')
