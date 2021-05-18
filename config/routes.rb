Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#top'
<<<<<<< HEAD

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]
end
=======
  
  get '/users/:id', to: 'users#show', as: 'user'
end
>>>>>>> d276ea1578c363de678e90761725bc32bf652c4f
