class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.datetime :open_date
      t.datetime :end_date
      t.string :role
      t.string :name
      t.string :company

      t.timestamps
    end
  end
end
