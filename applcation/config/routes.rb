Rails.application.routes.draw do
  resources :dash_boards
  resources :employees
  resources :books
 devise_for :users, controllers: { sessions: 'users/sessions' } # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get 'users/signout' 
get 'load_link_details' => 'dash_boards#load_link_details'
 get 'check_link_details' => 'dash_boards#check_link_details' 
root to: "dash_boards#index"
end
