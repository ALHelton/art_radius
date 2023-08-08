FactoryBot.define do
  sequence :art_piece_title do |n|
    "#{Faker::Emotion.adjective.capitalize} #{Faker::Emotion.noun.capitalize} #{n}"
  end

  factory :item do
    name { generate(:art_piece_title) }
    description { Faker::JapaneseMedia::StudioGhibli.quote }
    price { Faker::Number.number(digits: 4) }
    status { 0 }
    association :artist
    created_at { DateTime.now }
    updated_at { DateTime.now }
  end
end
