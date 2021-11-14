Rails.application.routes.draw do
  root to: 'lists#index'

  resources :lists, except: [:index] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end

  resources :animes, only: [:index, :show]
  resources :voice_actors, only: [:index, :show]
  resources :characters, only: [:index, :show]
  resources :favorites, only: [:index]
end
