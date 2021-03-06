Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
    get 'signup', to: 'users#new'
    post 'users', to: 'users#create'
    resources :users, except: [:new]
end
