require 'rails_helper'

RSpec.describe Comment, type: :model do
  # We want to test:
  # Validations such as if a field is pouplated
  # Associations to make sure our relationships are correct

  describe "validations" do
    # it "should validate the presence of commenter name" do
    # commenter = Comment.new(name: 'Sven Svendson')
    # expect(commenter.valid?).to be false
    # end

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:body) }
  end

  describe "associations" do
    it { should belong_to :post }
  end
end
