class RemoveWrongInterviewsId < ActiveRecord::Migration[6.0]
  def change
    remove_column :videos, :interviews_id
  end
end
