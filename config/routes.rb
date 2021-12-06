Rails.application.routes.draw do
  devise_for :users
  # root to: 'lists#index'
  # get '/new', to: 'lists#new', as: :new_list
  # post '/', to: 'lists#create'

  root to: 'pages#home'

  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
  end

  resources :animes, only: [:index, :show]
  resources :voice_actors, only: [:index, :show]
  resources :characters, only: [:index, :show]
  resources :favorites, only: [:index]
end
