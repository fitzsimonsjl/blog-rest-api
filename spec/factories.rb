FactoryBot.define do
    factory :post do
      title { "Test Post Title" }
      body { "Test Post Body" }
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

