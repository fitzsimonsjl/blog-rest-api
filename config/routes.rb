Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :comments
      resources :posts

      resources :triangle, only: [:index, :create, :show]

      get "triangle", to: "triangle#new"
    end
  end
end
