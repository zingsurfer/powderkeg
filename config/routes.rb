Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/images', to: 'images#show'
      get '/snowcast', to: 'snowcast#show'
      resources :users, only: [:create]
      resources :sessions, only: [:create]
    end
  end
end
