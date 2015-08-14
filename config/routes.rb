Rails.application.routes.draw do
  
  namespace :admin do
    resources :articles, except: :show
  end
  
  resources :articles, only: [:index, :show]
  
  root to: 'articles#index'
end
