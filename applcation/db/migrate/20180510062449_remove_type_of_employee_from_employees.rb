class RemoveTypeOfEmployeeFromEmployees < ActiveRecord::Migration[5.2]
  def change
    remove_column :employees, :type_of_employee, :string
  end
end
