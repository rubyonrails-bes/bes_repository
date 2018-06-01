class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         #:confirmable
  #ROLES =  %w[admin manager hr employee].freeze

has_and_belongs_to_many :roles, :join_table => :users_roles
mount_uploader :img_url, ImageUploader

validates_processing_of :img_url
validate :image_size_validation

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
private
  def image_size_validation
    errors[:img_url] << "should be less than 500KB" if img_url.size > 0.5.megabytes
  end



end
