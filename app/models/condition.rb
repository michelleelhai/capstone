class Condition < ApplicationRecord
  has_many :solutions
  has_many :products, through: :solutions
  belongs_to :user
  validates :name, presence: true
end
