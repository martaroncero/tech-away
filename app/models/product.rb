class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  belongs_to :category
  
  CONDITIONS = ["New", "Used (like new)", "Used (good)", "Used (fair)"]
  validates :condition, inclusion: {in: CONDITIONS }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
