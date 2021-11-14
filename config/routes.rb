Rails.application.routes.draw do
  # root to: 'lists#index'
  # get '/new', to: 'lists#new', as: :new_list
  # post '/', to: 'lists#create'

  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
  end

  resources :animes, only: [:index, :show]
  resources :voice_actors, only: [:index, :show]
  resources :characters, only: [:index, :show]
  resources :favorites, only: [:index]
end
