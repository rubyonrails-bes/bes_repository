class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #ROLES =  %w[admin manager hr employee].freeze
has_and_belongs_to_many :roles, :join_table => :users_roles
def admin?
  has_role?(:admin)
end
 
def manager?
  has_role?(:manager)
end 

def hr?
  has_role?(:hr)
end
 
def employee?
  has_role?(:employee)
end 

end
