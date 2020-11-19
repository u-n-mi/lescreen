class Interview < ApplicationRecord
  belongs_to :user
  has_many :videos
  has_many :questions
  validates :name, presence: true

  def days_remaining
    Date.today - self.final_date.to_date
  end
end
