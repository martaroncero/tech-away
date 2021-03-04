class Request < ApplicationRecord
  belongs_to :user
  belongs_to :category

  def self.count_per_category(*limit)
    Category.select('categories.id, categories.title, count(request.id) as count').includes("requests")
  end
end
