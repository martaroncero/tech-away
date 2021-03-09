class Category < ApplicationRecord
  has_many :products
  has_many :requests
  has_one_attached :photo
end
