FactoryBot.define do
  factory :artist do
    name { Faker::Artist.name }
    created_at { Faker::Date.between(from: 180.days.ago, to: Date.today) }
    updated_at { Faker::Date.between(from: 180.days.ago, to: Date.today) }
  end
end
