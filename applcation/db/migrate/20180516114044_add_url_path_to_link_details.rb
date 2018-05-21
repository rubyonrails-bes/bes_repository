class AddUrlPathToLinkDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :link_details, :url_path, :string
  end
end
