# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '06 04 18 57 55',
    category:       "chinese"
  },
  {
    name:         'Asian Wok',
    address:      'Loin',
    phone_number:  '06 04 18 57 55',
    category:       "french"
  },
  {
    name:         'Esprit Tchai',
    address:      'Près',
    phone_number:  '06 04 28 57 55',
    category:       "italian"
  },
  {
    name:         'Phorrito',
    address:      'Tout prêt',
    phone_number:  '06 12  22 57 55',
    category:       "belgian"
  },
  {
    name:         'Glasses',
    address:      'New',
    phone_number:  '06 04 18 22 55',
    category:       "japanese"
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

puts 'Cleaning database...'
Review.destroy_all

puts 'Creating reviews...'
reviews_attributes = [
  {
    content:         'Very Good',
    rating:         4,
    restaurant_id:   28,
  },
 {
    content:         'Very Strong',
    rating:         3,
    restaurant_id:   29,
  },
 {
    content:         'Hello',
    rating:         2,
    restaurant_id:   30,
  },

]
Review.create!(reviews_attributes)
puts 'Finished!'

