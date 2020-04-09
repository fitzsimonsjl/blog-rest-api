require 'rails_helper'
require 'factory_bot'

RSpec.describe Api::V1::CommentsController do
  describe "GET #index" do
    it "returns all comments" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end

RSpec.describe Api::V1::CommentsController do

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

  describe "POST #create" do
    context "with valid params" do
     it "succesfully creates a comment"
   end

   context "with invalid params" do
     it "returns an error that the comment could not be saved"
   end
  end

