class CreateTmessages < ActiveRecord::Migration
  def change
    create_table :tmessages do |t|
      t.text :text

      t.timestamps null: false
    end
  end
end
