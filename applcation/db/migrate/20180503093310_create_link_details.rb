class CreateLinkDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :link_details do |t|
      t.belongs_to :dash_board , index: true
      t.string :detail_name
      t.timestamps
    end
  end
end
