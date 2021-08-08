Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'pages#top'

  get 'about', to: 'pages#about'

  resources :plannings, only: [:index, :new, :create]
end
