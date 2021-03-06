Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      resources :player, only: [:create, :index, :show]
    end
  end

  namespace :api do 
    namespace :v1 do
      resources :game, only: [:create, :index, :show]
    end
  end

end
