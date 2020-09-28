class RemovePasswwordDigestFromUsers < ActiveRecord::Migration[6.0]
  def change
    # remove_column :users, :passwword, :string
    rename_column :users, :passwword_digest, :password_digest
  end
end
