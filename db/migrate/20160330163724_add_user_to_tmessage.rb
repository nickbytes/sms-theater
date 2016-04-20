class AddUserToTmessage < ActiveRecord::Migration
  def change
    add_column :tmessages, :user, :string
  end
end
