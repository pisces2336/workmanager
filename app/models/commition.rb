class Commition < ApplicationRecord
  belongs_to :user
  has_many :works, dependent: :destroy

  validates :name, presence: true
  validates :twitter, presence: true
end
