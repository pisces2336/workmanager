class Work < ApplicationRecord
  belongs_to :user
  belongs_to :commition

  validates :title, presence: true
  validates :date, presence: true
end
