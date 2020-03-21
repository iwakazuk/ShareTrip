Rails.application.routes.draw do
  get "/" => "home#top"
  get "about" => "home#about"
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    registrations: 'users/registrations'
  }
 
  resources :users, only: %i[index show] do
    resources :likes, only: %i[index]
  end

  resources :posts do
    resources :likes, only: %i[create destroy]
    resources :comments, only: %i[create edit update destroy]
  end

end
