class CreateDashBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :dash_boards do |t|
      t.string :link_name
      t.timestamps
    end
  end
end
