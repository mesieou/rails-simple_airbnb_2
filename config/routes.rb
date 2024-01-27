Rails.application.routes.draw do
  resources :flats
  post 'flats', to: 'flats#index', as: :search_flat
end
