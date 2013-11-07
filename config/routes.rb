Shouter::Application.routes.draw do
  # root page usuall match all HTTP verbs
  # I specify only the a get request with via..
  root to: 'homes#show', via: :get
 
  # dashboard is a singleton resource because  
  # it does not have an :id
  resource  :dashboard, only: [:show] 
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show] do 
    post 'follow' => 'following_relationships#create'
  end
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  
end
