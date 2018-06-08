class AddMaritalToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :marital, :string
  end
end
