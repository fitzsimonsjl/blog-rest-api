FactoryBot.define do
   factory :post do
    title { Faker::Coffee.blend_name }
    body { Faker::Coffee.notes }
   end
 end
