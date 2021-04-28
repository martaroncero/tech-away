class Booking < ApplicationRecord
  belongs_to :charity
  belongs_to :user
  belongs_to :product
end
