FactoryBot.define do
  factory :invoice_item do
    quantity { 1 }
    price { 0 }
    status { 0 }
    association :invoice
    association :item
    created_at { DateTime.now }
    updated_at { DateTime.now }
  end
end
