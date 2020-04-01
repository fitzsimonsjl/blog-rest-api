require 'rails_helper'

RSpec.describe Post, type: :model do
subject { Post.new(title: "Test post for testing purposes", body: "Test body for test purposes") }

before { subject.save }

it 'title should be present' do
expect(subject).to be_valid
end

it 'body should be present' do
  expect(subject).to be_valid
end

end
