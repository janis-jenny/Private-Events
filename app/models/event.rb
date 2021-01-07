class Event < ApplicationRecord
  validates :title, :description, :date, :location, presence: true
  validates :title, uniqueness: true
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user, dependent: :destroy
  belongs_to :user
  scope :past_events, -> { where('date < ?', Time.now) }
  scope :upcoming_events, -> { where('date > ?', Time.now) }
end
