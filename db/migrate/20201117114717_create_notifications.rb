class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.integer :recruiter_id
      t.integer :video_id
      t.string :open
      t.string :from

      t.timestamps
    end
  end
end
