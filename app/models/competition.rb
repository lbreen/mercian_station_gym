class Competition < ApplicationRecord
  has_many :events

  def next_event
    self.events.select { |e| e.time > DateTime.now }.first
  end
end
