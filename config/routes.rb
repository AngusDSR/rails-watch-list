Rails.application.routes.draw do
  # STUDY THIS SHIT
  root to: 'lists#index'
  resources :lists, except: %i[edit update] do
    resources :bookmarks, only: %i[new create]
    # resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy

  # resources :reviews, only: :destroy
end
