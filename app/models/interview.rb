class Interview < ApplicationRecord
  belongs_to :user
  has_many :videos
  has_many :questions
end
