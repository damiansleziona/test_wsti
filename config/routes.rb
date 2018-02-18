Rails.application.routes.draw do
  get '/test', to: proc { |e| [200, {}, ["ok"]] }

  get '/users', to: "users#index"
  get '/contact', to: "static_pages#contact"
  get '/about', to: "static_pages#about"
  get '/mission', to: "static_pages#mission"
  
end