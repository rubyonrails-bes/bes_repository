class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.text :designation
      t.string :image_url
      t.text :addres
      t.integer :year
      t.integer :month
      t.integer :date
      t.timestamps
    end
  end
end
