class Commition < ApplicationRecord
  belongs_to :user
  has_many :works
end
