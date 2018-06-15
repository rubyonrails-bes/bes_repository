class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :dep_code
      t.string :dep_name

      t.timestamps
    end
  end
end
