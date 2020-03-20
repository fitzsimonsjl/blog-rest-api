require 'rails_helper'

RSpec.describe Api::V1::PostsController do

  describe 'GET #index' do
    before do
      get :index
    end
  end

    it 'returns http success on #index' do
      expect(response).to have_http_status(:success)
    end

    it 'JSON body response contains expected post attributes for #index' do
      have_attributes([:id, :title, :body])
    end
end

  RSpec.describe Api::V1::PostsController do

    describe 'GET #show' do
      before do
        get :show
      end
    end

    it 'returns http success on #show' do
      expect(response).to have_http_status(:success)
    end

    it 'JSON body response contains individual post attributes for #show' do
      have_attributes([:id, :title, :body])
    end
  end

   RSpec.describe Api::V1::PostsController do

    describe 'GET #create' do
      before do
        get :create
      end
    end

    it 'creates a blog post' do
      post = Post.build(title: "Post title for Rspec Testing", body: "Post body for RSpect Testing")
      end
  end
