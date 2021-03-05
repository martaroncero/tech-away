class Request < ApplicationRecord
  belongs_to :user
  belongs_to :category

  def self.count_per_category()
    Request.joins(:category).group(:title).size.map{ |k, v| { title: k, count: v }}.sort_by { |k| k[:count] }.reverse
  end
end
