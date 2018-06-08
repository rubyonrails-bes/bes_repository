class AddAddress1ToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :address1, :string
  end
end
