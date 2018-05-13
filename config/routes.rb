Rails.application.routes.draw do
  get 'sessions/new'

  get '/terms', to: 'main_pages#terms'
  get '/contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create', as: 'create_message'
  get '/forum', to: 'event_page#forum'
  
  root 'candidates#home'

  resources :users
  resources :candidates

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end