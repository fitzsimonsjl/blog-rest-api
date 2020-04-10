 FactoryBot.define do
   factory :comment do
    post_id { 8 }
    name { Faker::Name.first_name }
    body { Faker::Lorem.paragraph }
   end
 end
