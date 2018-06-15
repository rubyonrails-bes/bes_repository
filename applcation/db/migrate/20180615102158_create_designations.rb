class CreateDesignations < ActiveRecord::Migration[5.2]
  def change
    create_table :designations do |t|
      t.references :department, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
