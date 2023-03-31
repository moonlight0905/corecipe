FactoryBot.define do
  factory :comment do
    association :user
    association :recipe

    text { Faker::Lorem.sentences(number: 2) }
  end
end
