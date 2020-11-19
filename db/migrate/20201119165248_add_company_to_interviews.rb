class AddCompanyToInterviews < ActiveRecord::Migration[6.0]
  def change
    add_column :interviews, :company, :text
  end
end
