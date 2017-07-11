Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'pages#home'


  # get '/players' , to: 'players#index'
  # get '/players/new' , to: 'players#new' , as: 'new_player'
  # post 'players' , to: 'players#create'
  # get 'players/:id/edit', to: 'players#edit', as: 'edit_player'
  # patch '/players/:id', to: 'players#update'
  # get 'players/:id', to: 'players#show', as: 'player'
  # get '/home' , to: 'pages#home'
  # delete '/players/:id', to: 'players#destroy'

  # ot just by typing this resources :players


  resources :players do
    member do
      post 'like'
    end
    resources :skills
  end
end
