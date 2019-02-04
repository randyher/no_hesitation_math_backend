Rails.application.routes.draw do




  namespace :api do
    namespace :v1 do
      resources :games, only: [:index, :update, :create, :destroy]
      resources :gamesproblems, only: [:index, :create]
      
      resources :problems
      resources :users
        post '/login', to: 'sessions#create'
        delete '/logout', to: 'sessions#destroy'
        get '/profile', to: 'users#profile'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
