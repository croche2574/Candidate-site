Rails.application.routes.draw do
  get 'candidates/new'

  get '/terms', to: 'main_pages#terms'
  get '/contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create', as: 'create_message'
    
  root 'candidates#home'

  resources :candidates

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end