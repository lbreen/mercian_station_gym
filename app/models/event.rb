class Event < ApplicationRecord
  belongs_to :competition
  belongs_to :user

  validates :location, presence: true
  validates :title, presence: true
  validates :location, presence: true
  validates :time, presence: true
  validates :poc, presence: true
end
