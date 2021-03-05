class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  belongs_to :category
  has_many_attached :photos

  CONDITIONS = ["New", "Used (like new)", "Used (good)", "Used (fair)"]
  validates :condition, inclusion: {in: CONDITIONS }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

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
