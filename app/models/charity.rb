class Charity < ApplicationRecord
  has_many :users
  has_many :bookings
  has_many :requests, through: :users
end
