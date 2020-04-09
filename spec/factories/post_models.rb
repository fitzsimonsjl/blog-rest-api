FactoryBot.define do
   factory :post do
    name { Faker::Coffee.blend_name }
    body { Faker::Coffee.notes }
   end
 end
