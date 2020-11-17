class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.integer :recruiter_id
      t.integer :candidate_id
      t.integer :open_date
      t.integer :final_date

      t.timestamps
    end
  end
end
