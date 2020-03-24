Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    registrations: 'users/registrations'
  }

  root "home#index"
  get "about" => "home#about"
 
  resources :users, only: [:index, :show] do
    resources :likes, only: [:index]
    member do
      get :following, :followers
    end
  end

  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  resources :relationships, only: [:create, :destroy]

end
