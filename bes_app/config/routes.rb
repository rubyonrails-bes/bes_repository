Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'user/create'
get 'user/new'
root "user#new"
end
