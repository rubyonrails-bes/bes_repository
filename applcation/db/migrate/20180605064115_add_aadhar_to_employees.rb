class AddAadharToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :aadhar, :string
  end
end
