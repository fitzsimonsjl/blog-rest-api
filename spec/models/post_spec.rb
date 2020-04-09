require 'rails_helper'

RSpec.describe Post, type: :model do
  # We want to test:
  # Validations such as if a field is pouplated (post title and body)
  # Associations to make sure our relationships are correct (post has comments)

  describe "validations" do
    # it "should validate the presence of commenter name" do
    # commenter = Comment.new(name: 'Sven Svendson')
    # expect(commenter.valid?).to be false
    # end

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end

  describe "associations" do
    it { should have_many :comments }
  end
end
