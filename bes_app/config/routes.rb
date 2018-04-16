Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :user
get 'user/create'
get 'user/new'
get 'user/index'
get 'user/login_user'
post 'user/login_user'
post 'user/create'


root "user#index"


end
