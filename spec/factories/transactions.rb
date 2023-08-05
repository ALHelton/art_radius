FactoryBot.define do
  factory :transaction do
    credit_card_number { Faker::Business.credit_card_number }
    credit_card_expiration { Faker::Business.credit_card_expiry_date }
    result { 1 }
    association :invoice
    created_at { Faker::Date.between(from: 180.days.ago, to: Date.today) }
    updated_at { Faker::Date.between(from: 180.days.ago, to: Date.today) }
  end
end
