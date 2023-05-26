Rails.application.routes.draw do
  # this is the root
  root to: 'lists#index'

  resources :lists, only: [:show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: :destroy
end
