FactoryBot.define do
  factory :artist do
    name { Faker::Artist.name }
    created_at { DateTime.now }
    updated_at { DateTime.now }
  end
end
