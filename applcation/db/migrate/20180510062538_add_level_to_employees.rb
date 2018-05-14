class AddLevelToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :level, :string
  end
end
