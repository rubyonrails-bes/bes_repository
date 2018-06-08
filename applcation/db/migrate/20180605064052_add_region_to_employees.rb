class AddRegionToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :region, :string
  end
end
