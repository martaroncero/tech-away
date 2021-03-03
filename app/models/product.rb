class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  belongs_to :category
  
  CONDITIONS = ["New", "Used (like new)", "Used (good)", "Used (fair)"]
  validates :condition, inclusion: {in: CONDITIONS }
end
