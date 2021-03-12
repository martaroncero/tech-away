class Request < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :category, uniqueness: { scope: :user_id, message: "You can only have one request per category" }

  def self.count_per_category(*limit)
    Request.where(status: "Pending").joins(:category).group(:title).size.map{ |k, v| { category: k, count: v }}.sort_by { |k| k[:count] }.reverse
  end

  def self.stringify_count(hash_array)
    hash_array.map do |hash|
      "#{hash[:count]} #{hash[:category].pluralize(hash[:count])} #{hash[:count] == 1 ? "is" : "are"} needed!"
    end
  end
end
