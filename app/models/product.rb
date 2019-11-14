class Product < ApplicationRecord
  belongs_to :user
  has_many :solutions
  has_many :conditions, through: :solutions
  has_many :comments
  validates :name, presence: true
  has_many :votes
  # has_many :users, through: :votes

end
