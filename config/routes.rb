Rails.application.routes.draw do
  # STUDY THIS SHIT
  root to: 'lists#index'
  resources :lists, except: %i[edit update] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
  resources :lists, only: :destroy
end
