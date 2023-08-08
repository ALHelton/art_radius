FactoryBot.define do
  factory :invoice do
    status { 0 }
    association :buyer
    created_at { DateTime.now }
    updated_at { DateTime.now }
  end
end