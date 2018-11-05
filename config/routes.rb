Rails.application.routes.draw do
  resources :categories

  root 'categories#index'


  resources :categories do
    resources :posts
  end

end
