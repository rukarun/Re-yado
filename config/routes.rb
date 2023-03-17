Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home'

  resources :rooms do
    collection do
      get 'home',to:'home'
      get 'search'
      post 'search'
    end
  end

  resources :reservations, only: [:index, :new, :create] do
    collection do
      post :confirm
    end
  end

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  get "users/show" => "users#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
