Rails.application.routes.draw do
  resources :games
  # resources :users


  namespace :api do
    namespace :v1 do
      resources :games, only: [:index, :update, :create, :destroy]
      resources :users
        post '/login', to: 'sessions#create'
        delete '/logout', to: 'sessions#destroy'
        get '/profile', to: 'users#profile'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
