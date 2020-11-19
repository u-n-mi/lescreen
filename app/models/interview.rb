class Interview < ApplicationRecord
  belongs_to :user
  has_many :videos, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_name_and_date,
    against: [:name, :open_date, :final_date],
    using: {
      tsearch: { prefix: true }
    }
end
