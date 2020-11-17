class ChangeRecruiterIdToUserId < ActiveRecord::Migration[6.0]
  def change
    rename_column :interviews, :recruiter_id, :user_id
  end
end
