# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(nume:'Flacon 60 cps', pret: 80, stoc: 0)
User.create(email: 'curcumin.mailer@gmail.com', tip: 'admin', password:'parola')
Product.create(nume:'Flacon 90 cps', pret: 110, stoc: 0)
#User.create(email: 'andrew.musat@gmail.com', tip: 'admin', password:'parola')
#User.create(email: 'musat.andrew@gmail.com', tip: 'admin', password:'parola')