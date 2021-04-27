class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def posted_ago
    minutes_since_creation = ((Time.now - created_at) / 60).floor

    if minutes_since_creation < 60
      return "Posted #{minutes_since_creation} #{"minute".pluralize(minutes_since_creation)} ago"
    end

    hours_since_creation = (minutes_since_creation / 60).floor

    if hours_since_creation < 24
      return "Posted #{hours_since_creation} #{"hour".pluralize(hours_since_creation)} ago"
    end

    days_since_creation = (hours_since_creation / 24).floor

    if days_since_creation < 7
      return "Posted #{days_since_creation} #{"day".pluralize(days_since_creation)} ago"
    end

    weeks_since_creation = (days_since_creation / 7).floor

    if weeks_since_creation < 7
      return "Posted #{weeks_since_creation} #{"week".pluralize(weeks_since_creation)} ago"
    end
  end
end
