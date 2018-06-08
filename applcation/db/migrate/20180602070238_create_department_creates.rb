class CreateDepartmentCreates < ActiveRecord::Migration[5.2]
  def change
    create_table :department_creates do |t|
      t.string :department_name
      t.string :designation


      t.timestamps
    end
  end
end
