Rails.application.routes.draw do
  resources :users
  resources :posts do
    member do
      get :vote
      get :link_vote
    end
  end

  root 'posts#index'
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
