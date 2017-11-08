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
    phone_number: "0799282982",
    category:        "italian"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: "079930482982",
    category:        "italian"
  },
    {
    name:         'Flat Iron',
    address:      '77 Curtain Rd, London EC2A 3BS',
    phone_number: "07993048292232",
    category:        "french"
  },
    {
    name:         'Le Bab',
    address:      'Top Floor, Kingly Court, Carnaby St, Carnaby, London W1B 5PW',
    phone_number: "02074399222",
    category:        "french"
  },
    {
    name:         'Relais de Venise',
    address:      '5 Throgmorton St, London EC2N 2AD',
    phone_number: "02076386325",
    category:        "french"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
