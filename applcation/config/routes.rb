Rails.application.routes.draw do
  resources :dash_boards
  resources :employees
  resources :books
 devise_for :users, controllers: { sessions: 'users/sessions' } # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get 'users/signout' 

root to: "dash_boards#index"
end
