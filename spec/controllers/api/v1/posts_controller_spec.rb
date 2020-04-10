require 'rails_helper'
require 'factory_bot'

RSpec.describe Api::V1::PostsController, type: :controller do

  describe 'GET #index' do
    before do
      get :index
    end
  end

    it 'returns all posts #index' do
      expect(response).to have_http_status(:success)
    end

    it 'the post returned has the correct attributes' do
      have_attributes([:id, :title, :body])
    end
end

  RSpec.describe Api::V1::PostsController, type: :controller do

    describe 'GET #show' do
      before do
        get :show
      end
    end

    it 'returns a specific post' do
      expect(response).to have_http_status(:success)
    end

    it 'the post returned contains the correct attributes' do
      have_attributes([:id, :title, :body])
    end
  end

RSpec.describe Api::V1::PostsController, type: :controller do

  describe 'POST #create' do
    before do
      get :create
    end
  end

  it 'successfully creates a post' do
    test_post = build(:post)
      expect(test_post).to be_valid
  end
end

