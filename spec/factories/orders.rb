FactoryBot.define do
  factory :order do
    name { Faker::StarWars.character }
    price { Faker::Number.number(100000) }
    imageUrl "https://robohash.org/my-own-slug.png?size=300x300"
  end
end