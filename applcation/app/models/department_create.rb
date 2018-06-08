class DepartmentCreate < ApplicationRecord
	validates :department_name, presence: true
	validates :department_code, presence: true
	validates :designation , presence: true, uniqueness: {message: "that artist already added"}
end
