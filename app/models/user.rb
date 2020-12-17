class User < ApplicationRecord
  validates :name, :email, presence: true
  has_many :attendances
  has_many :attended_events, through: :attendances, source: :event
  has_many :events
  
end