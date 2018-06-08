class AddPostalCodeToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :postal_code, :string
  end
end
