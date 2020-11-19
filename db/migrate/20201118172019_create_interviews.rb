class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.datetime :open_date
      t.datetime :final_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
