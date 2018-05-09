class AddLinkRoleToDashBoard < ActiveRecord::Migration[5.2]
  def change
    add_column :dash_boards, :link_role, :string
  end
end
