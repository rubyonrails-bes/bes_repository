class AddDepartmentCodeToDepartmentCreate < ActiveRecord::Migration[5.2]
  def change
    add_column :department_creates, :department_code, :string
  end
end
