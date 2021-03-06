class User < ApplicationRecord
  has_many :created_events, foreign_key: :creator_id, class_name: "Event"
  has_many :attendances, foreign_key: :attendee_id
  has_many :attended_events, through: :attendances

  def previous_events
    self.attended_events.where("date < ?", Time.now)
  end

  def upcoming_events
    self.attended_events.where("date > ?", Time.now)
  end
end
