class AddNameToInterviews < ActiveRecord::Migration[6.0]
  def change
    add_column :interviews, :name, :string
  end
end
