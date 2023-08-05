FactoryBot.define do
  factory :invoice do
    status { 0 }
    association :buyer
    created_at { Faker::Date.between(from: 180.days.ago, to: Date.today) }
    updated_at { Faker::Date.between(from: 180.days.ago, to: Date.today) }
  end
end