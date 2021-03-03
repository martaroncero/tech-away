class Category < ApplicationRecord

  CATEGORIES = [ "Camera", "Desktop", "Laptop", "Mobile Phone", "Monitor", "Printer" ]

  validates :title, inclusion: { in: CATEGORIES }

  has_many :products
end
