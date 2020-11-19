class ChangeCompanyToBeStringInInterviews < ActiveRecord::Migration[6.0]
  def change
    change_column :interviews, :company, :string
  end
end
