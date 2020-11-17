class AddRightInterviewId < ActiveRecord::Migration[6.0]
  def change
    add_reference :videos, :interview, index: true
    add_foreign_key :videos, :interviews
  end
end
