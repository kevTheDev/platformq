Rails.application.routes.draw do
  
  namespace :admin do
    resources :articles, except: :show
  end
  
  resources :articles, only: [:index, :show]
  
  resources :subscribers, only: [:create]
  
  root to: 'articles#index'
end
