class AddBloodToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :blood, :string
  end
end
