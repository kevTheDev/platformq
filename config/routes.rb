Rails.application.routes.draw do
  
  namespace :admin do
    resources :articles, except: :show
  end
  
end
