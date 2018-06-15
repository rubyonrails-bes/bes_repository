class Department < ApplicationRecord
has_many :designations
  
  validates :dep_code, presence: true, uniqueness: true
  
  validates :dep_name, presence: true, uniqueness: true
end
