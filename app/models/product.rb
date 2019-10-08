class Product < ApplicationRecord
  belongs_to :user
  has_many :solutions
  has_many :conditions, through: :solutions
end
