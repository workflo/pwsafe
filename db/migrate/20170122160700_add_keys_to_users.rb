class AddKeysToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :public_key, :text
    add_column :users, :encrypted_private_key, :text
    add_column :users, :encrypted_recovery_key, :text
  end
end
