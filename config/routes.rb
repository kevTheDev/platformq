Rails.application.routes.draw do
  
  namespace :admin do
    resources :articles, except: :show
  end
  
  resources :articles, only: [:index, :show] do
    resources :comments, only: [:create], controller: 'comments'
  end
  
  resources :subscribers, only: [:create]
  
  get 'unsubscribe', to: 'subscribers#unsubscribe', as: :unsubscribe
  
  root to: 'articles#index'
end
