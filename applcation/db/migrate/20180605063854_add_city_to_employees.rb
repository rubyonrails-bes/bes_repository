class AddCityToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :city, :string
  end
end
