Rails.application.routes.draw do
  resources :pageparameters
  root 'home#index'
  get '/detail/:id', to: 'home#detail'
  resources :gifdays
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
