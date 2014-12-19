Rails.application.routes.draw do
  root to: 'static_pages#index'

  resources :artists
  resource :recording_artists
  resources :weather

end
