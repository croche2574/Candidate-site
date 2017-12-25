Rails.application.routes.draw do
  get 'main_pages/index'

  get 'main_pages/about'

  get 'main_pages/terms'

  root 'main_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
