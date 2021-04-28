class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def time_since_creation
    return unless created_at

    minutes = ((Time.now - created_at) / 60).floor

    if minutes < 60
      return "Posted #{minutes} #{'minute'.pluralize(minutes)} ago"
    end

    hours = (minutes / 60).floor

    if hours < 24
      return "Posted #{hours} #{'hour'.pluralize(hours)} ago"
    end

    days = (hours / 24).floor

    if days < 7
      return "Posted #{days} #{'day'.pluralize(days)} ago"
    end

    weeks = (days / 7).floor

    if weeks < 7
      return "Posted #{weeks} #{'week'.pluralize(weeks)} ago"
    end
  end
end
