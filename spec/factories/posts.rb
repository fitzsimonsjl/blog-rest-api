FactoryGirl.define do
  factory :post, class: Post do
    title       { Faker::Coffee.blend_name }
    body        { Faker::Coffee.notes }
  end
end
