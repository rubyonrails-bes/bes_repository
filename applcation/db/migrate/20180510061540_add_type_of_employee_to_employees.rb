class AddTypeOfEmployeeToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :type_of_employee, :string
  end
end
