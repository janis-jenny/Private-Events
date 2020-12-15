class User < ApplicationRecord
  has_many :attendances, foreign_key: :event_id
  has_many :attended_events, through: :attendance
  has_many :events, foreign_key: 'user_id'
  
end