class Employee < ApplicationRecord
	resourcify
	belongs_to :user 
has_many :subordinates, class_name: "Employee",
                          foreign_key: "parent_id"
 
  belongs_to :parent, class_name: "Employee"
mount_uploader :image_url, ImageUploader

end
