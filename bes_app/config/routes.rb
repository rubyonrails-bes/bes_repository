Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'user/create'
post 'user/create'
get 'user/new'
get 'user/login_user'
post 'user/login_user'
root "user#new"
end
