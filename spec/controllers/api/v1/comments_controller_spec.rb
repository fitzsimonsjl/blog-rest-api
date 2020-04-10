require 'rails_helper'
require 'factory_bot'

RSpec.describe Api::V1::CommentsController, type: :controller do
  describe "GET #index" do
    it "returns all comments" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end

RSpec.describe Api::V1::CommentsController, type: :controller do

  describe 'GET #show' do
    before do
      get :show
    end
  end

    it 'returns a specific comment' do
      expect(response.status).to eql 200
    end

    it 'the comment returned contains the correct attributes' do
      have_attributes([:post_id, :name, :body])
    end
  end

RSpec.describe Api::V1::CommentsController, type: :controller do

describe 'POST #create' do
      before do
        get :create
  end
end

it 'successfully creates a comment' do
  test_comment = build(:comment)
  expect(test_comment).to be_valid
  end
end

