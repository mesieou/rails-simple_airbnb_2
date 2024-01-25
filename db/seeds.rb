require 'faker'

#destroying all models
puts 'Destroying all flats'
Flat.destroy_all

#Creating new models
puts 'Creating flats'
4.times do
  flat = Flat.create!(
    name: Faker::Superhero.name,
    address: Faker::Address.street_address,
    description:'A lovely summer feel for this spacious garden flat.
    Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: (20..200).to_a.sample,
    number_of_guests: (1..20).to_a.sample
  )
  puts "#{flat.name} created!"
end
puts 'All finished'
