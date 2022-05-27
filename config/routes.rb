Rails.application.routes.draw do
  # get 'bookmarks/create', as: :bookmark_new
  root to: 'lists#index'
  resources :lists, except: %i[update] do
    resources :bookmarks, only: %i[new create index]
  end

  resources :bookmarks, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
