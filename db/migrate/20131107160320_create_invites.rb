class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :event_id
      t.integer :user_id
      t.boolean :rsvp

      t.timestamps
    end
  end
end
