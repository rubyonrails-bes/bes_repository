Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :user
get 'user/create'
post 'user/create'
get 'user/new'
<<<<<<< HEAD
get 'user/login_user'
post 'user/login_user'
root "user#new"
=======
get 'user/index'
get 'user/login_user'
post 'user/login_user'
post 'user/create'


root "user#index"


>>>>>>> 44d4d1d996d17c1f2a6fb06d7c12600ace72f8ad
end
