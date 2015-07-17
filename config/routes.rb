Rails.application.routes.draw do
  devise_for :users
  root :to => 'categories#index'
  resources :categories do
    resources :projects
  end
  resources :posts do
    resources :comments
  end

  resources :references

  get '/about', to: 'pages#about'
  get '/denied', to: 'pages#denied'
end
