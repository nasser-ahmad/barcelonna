class RenameAdminChangePasswordDegestToPasswordDigest < ActiveRecord::Migration[5.1]
  def change
  	rename_column :admins, :password_degest, :password_digest
  end
end
