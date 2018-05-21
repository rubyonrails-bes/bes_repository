Rails.application.routes.draw do
  resources :dash_boards
  resources :employees
  resources :books
 devise_for :users, controllers: { sessions: 'users/sessions' } # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get 'search_employees' => 'employees#search_employee'
<<<<<<< HEAD
=======

>>>>>>> d986617829496e0c9344ebd3e0f58b55ff855097
 get 'users/signout' 
 get 'load_link_details' => 'dash_boards#load_link_details'
 get 'check_link_details' => 'dash_boards#check_link_details' 
 get 'check_employee_type' => 'employees#check_employee_type'
 get 'organization_chart' => 'dash_boards#show_organization_chart'
<<<<<<< HEAD
<<<<<<< HEAD
 get 'emp_list_show' => 'employees#emp_list_show'
=======

>>>>>>> a47bd15db4acc67cd5ab0380e5fdde5538f8156b
=======
# get 'search_employees' => 'employees#search_employee'
>>>>>>> d986617829496e0c9344ebd3e0f58b55ff855097
 root to: "dash_boards#index"
end
