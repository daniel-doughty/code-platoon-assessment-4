Rails.application.routes.draw do
  get 'category/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :categories

  root 'category#index'
end
