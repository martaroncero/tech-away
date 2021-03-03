class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  belongs_to :category
  
  CONDITIONS = ["New", "Used (like new)", "Used (good)", "Used (fair)"]
  validates :condition, inclusion: {in: CONDITIONS }

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :title, :description ],
    associated_against: {
      category: [ :title ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
