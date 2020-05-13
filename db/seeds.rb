require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end
puts 'Finished!'
