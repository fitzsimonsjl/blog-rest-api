FactoryBot.define do
    factory :test_post, class: Post do
      title { Faker::Coffee.blend_name }
      body { Faker::Coffee.notes }
    end

    factory :comment do
      post_id { 4 }
      name { "James Hetfield" }
      body { "This is the test comment body" }

      comment_params = {
        post_id: 4,
        name: "Lars Ulrich",
        body: "New test comment body"
      }
    end
  end

