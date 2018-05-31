Rails.application.routes.draw do
  resources :dash_boards
  resources :employees
  resources :books
 devise_for :users, controllers: { sessions: 'users/sessions' } # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get 'search_employees' => 'employees#search_employee'
 get 'users/signout' 
 get 'load_link_details' => 'dash_boards#load_link_details'
 get 'check_link_details' => 'dash_boards#check_link_details' 
 get 'check_employee_type' => 'employees#check_employee_type'
 get 'organization_chart' => 'dash_boards#show_organization_chart'
 get 'emp_list_show' => 'employees#emp_list_show'
<<<<<<< HEAD
=======
# get 'search_employees' => 'employees#search_employee'
>>>>>>> 3cdb48fd7ef53dd6650e47161c450830e5109e20
 root to: "dash_boards#index"
end
