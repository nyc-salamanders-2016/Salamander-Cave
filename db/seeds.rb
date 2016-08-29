require 'faker'

10.times do
  Salamander.create(name: Faker::Name.name, description: Faker::Company.catch_phrase)
end