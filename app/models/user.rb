class User < ApplicationRecord
  has_many :products
  has_many :conditions
  has_many :comments
  has_secure_password
  validates :username, presence: true, uniqueness: true
  has_many :votes
#   has_many :products, through: :votes
end
