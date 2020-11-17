class AddVideoIdToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :video, index: true
    add_foreign_key :reviews, :videos
  end
end
