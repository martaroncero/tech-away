class Request < ApplicationRecord
  belongs_to :user
  belongs_to :category

  def self.count_per_category(*limit)
    Request.joins(:category).group(:title).size.map{ |k, v| { category: k, count: v }}.sort_by { |k| k[:count] }.reverse
  end

  def self.stringify_count(hash_array)
    hash_array.map do |hash|
      "#{hash[:count]} #{hash[:category].pluralize(hash[:count])} #{hash[:count] == 1 ? "is" : "are"} needed!"
    end
  end
end
