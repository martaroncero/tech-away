class Product < ApplicationRecord
  include PgSearch::Model

  CONDITIONS = ["New", "Used (like new)", "Used (good)", "Used (fair)"]
  validates :condition, inclusion: { in: CONDITIONS }

  belongs_to :user
  belongs_to :category
  has_many :bookings
  has_one_attached :photo

  after_validation :geocode, if: :will_save_change_to_address?
  geocoded_by :address

  pg_search_scope :global_search,
                  against: [:title, :description],
                  associated_against: {
                    category: [:title]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
