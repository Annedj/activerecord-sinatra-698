require 'faker'

10.times do
  Restaurant.create(name: Faker::Hipster.sentence(word_count: 2), address: Faker::Address.community)
end

puts "Finished seeding 10 restaurants!"
