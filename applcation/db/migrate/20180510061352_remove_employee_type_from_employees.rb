class RemoveEmployeeTypeFromEmployees < ActiveRecord::Migration[5.2]
  def change
    remove_column :employees, :employee_type, :string
  end
end
