Rails.application.routes.draw do
  get '/terms', to: 'main_pages#terms'
  get 'contact-us', to: 'messages#new', as: 'new_message'
  post 'contact-us', to: 'messages#create', as: 'create_message'
  root 'main_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
