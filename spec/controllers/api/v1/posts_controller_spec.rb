require 'rails_helper'

describe "get all posts route", :type => :request do
  let!(:posts) {FactoryBot.create_list(:test_post, 10)}

before {get '/api/v1/posts'}

it 'returns all posts' do
    expect(JSON.parse(response.body).size).to eq(15)
  end

it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "Post POST route", :type => :request do

before do

    post '/api/v1/posts', params: { :post => 'test_post', :title => 'test_title', :body => 'test_body' }
  end

it 'returns the post itself' do
    expect(JSON.parse(response.body)['post']).to eq('test_post')
  end

it 'returns the post title' do
    expect(JSON.parse(response.body)['title']).to eq('test_title')
  end

it 'returns the post body' do
    expect(JSON.parse(response.body)['body']).to eq('test_body')
  end

it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
