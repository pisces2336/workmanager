class Commition < ApplicationRecord
  belongs_to :user
  has_many :works

  validates :name, presence: true
  validates :twitter, presence: true
end
