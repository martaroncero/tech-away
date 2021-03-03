class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  belongs_to :category
end
