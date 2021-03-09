class Category < ApplicationRecord
  has_many :products
  has_many :requests

  validates :title, uniqueness: true
end
