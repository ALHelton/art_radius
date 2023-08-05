Rails.application.routes.draw do
  resources :artist, only: [:show] do
    resources :dashboard, only: [:index]
    resources :items, only: [:index]
    resources :invoices, only: [:index]
  end
end
