class AddEmployeeTypeToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :employee_type, :string
  end
end
