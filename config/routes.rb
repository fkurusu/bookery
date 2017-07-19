Bookery::Application.routes.draw do
  root 'pages#home'

  get 'register', to: 'users#new'
  resources :users, only: [:create, :delete]

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'sign_out', to: 'sessions#destroy'

  resources :books do
    get :search, to: 'books#search', on: :collection
  end
end
