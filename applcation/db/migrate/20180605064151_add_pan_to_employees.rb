class AddPanToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :pan, :string
  end
end
