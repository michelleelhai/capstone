class User < ApplicationRecord
  has_many :products
  has_many :conditions

  has_secure_password
  validates :username, presence: true, uniqueness: true
end
