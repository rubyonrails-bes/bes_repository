class AddConfirmableColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :confirmation_token, :string
       add_column :users, :confirmed_at , :datetime
       add_column :users, :confirmation_sent_at, :datetime
       add_column :users,   :unconfirmed_email, :string
 
      add_column :users, :failed_attempts, :integer, default: 0, null: false # Only if lock strategy is :failed_attempts
       add_column :users, :unlock_token, :string # Only if unlock strategy is :email or :both
       add_column :users,:locked_at, :datetime

       add_column :users, :img_url, :string
 end
end
