class CreateChatroomUsers < ActiveRecord::Migration
  def change
    create_table :chatroom_users do |t|
      t.references :chatroom, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
