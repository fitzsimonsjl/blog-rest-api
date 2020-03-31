require 'rails_helper'
require 'factory_bot'

RSpec.describe Api::V1::CommentsController do
  describe 'GET #index' do
    before do
      get :index
    end
end

  it 'returns http success on #index and retrieves all comments' do
    expect(response).to have_http_status(:success)
  end

  it 'JSON body response contains expected comment attributes for comments #index' do
    have_attributes([:post_id, :name, :body])
    end
  end

RSpec.describe Api::V1::CommentsController do

  describe 'GET #show' do
    before do
      get :show
    end

    it 'returns http success on comments #show' do
      expect(response).to have_http_status(:success)
    end

    it 'JSON body response contains individual comment attributes for #show' do
      have_attributes([:post_id, :name, :body])
    end
  end
end
