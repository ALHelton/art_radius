Rails.application.routes.draw do
  resources :artist, only: [:show] do
    resources :dashboard, only: [:index]
  end
end
