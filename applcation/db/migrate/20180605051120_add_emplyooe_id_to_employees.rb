class AddEmplyooeIdToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :employee_id, :string
  end
end
