Rails.application.routes.draw do
  root to: 'pages#top'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]
end
