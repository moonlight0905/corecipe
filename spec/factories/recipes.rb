FactoryBot.define do
  factory :recipe do
    association :user

    recipe_name { Faker::Lorem.word }
    remarks { Faker::Lorem.sentences(number: 3) }
    
    category_id { '1' }
    servings_id { '1' }

    ingredients1 {Faker::Lorem.sentence(1)}
    cooking_instructions1 {Faker::Lorem.sentence(2)}

    after(:create) do |recipe|
      recipe.image.attach(io: File.open('public/images/truffles.jpg'), filename: 'truffles.jpg')
    end
  end
    
end
