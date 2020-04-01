require 'rails_helper'

RSpec.describe Comment, type: :model do
subject { Comment.new(id: 9, post_id: 3, name: "James Hetfield", body: "Test body for test purposes") }

before { subject.save }

it 'name of commenter should be present' do
expect(subject).to be_valid
end

it 'body of comment should be present' do
  expect(subject).to be_valid
end

end
