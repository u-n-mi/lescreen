class CreateRecruiters < ActiveRecord::Migration[6.0]
  def change
    create_table :recruiters do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name

      t.timestamps
    end
  end
end
