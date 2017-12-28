Rails.application.routes.draw do
  get '/about', to: 'main_pages#about'

  get '/terms', to: 'main_pages#terms'

  root 'main_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
