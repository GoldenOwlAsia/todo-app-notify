class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.string :uid
      t.string :message
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
