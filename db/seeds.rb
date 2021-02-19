# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

::Watch::Case.create({
  manufacturer: "Grand Seiko",
  reference: "5722-9991",
  purchase_date: 3.years.ago,
  price: 300000
})

::Watch::Case.create({
  manufacturer: "Grand Seiko",
  reference: "SBGA429",
  purchase_date: 3.days.ago,
  price: 300000
})
