Rails.application.routes.draw do
  root to: "users#index"

  devise_for :users
 
  get '/test', to: proc { |e| [200, {}, ["ok"]] }

  get '/contact', to: "static_pages#contact"
  get '/about', to: "static_pages#about"
  get '/mission', to: "static_pages#mission"
  get '/career', to: "static_pages#career"

  resources :users do
  	resources :orders
  end
end