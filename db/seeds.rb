15.times do
	post = Post.create(
		title: Faker::Coffee.blend_name,
		body: Faker::Coffee.notes )
	post.comments.create(name: Faker::Book.author, body: Faker::Lorem.paragraph)
end
