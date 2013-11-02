Shouter::Application.routes.draw do
  # root page usuall match all HTTP verbs
  # I specify only the a get request with via..
  root to: 'homes#show', via: :get 

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  
  
end
