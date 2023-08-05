FactoryBot.define do
  factory :buyer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    created_at { DateTime.now }
    updated_at { DateTime.now }
  end
end
