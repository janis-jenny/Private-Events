class Event < ApplicationRecord
  has_many :attendances, foreign_key: :user_id
  has_many :attendees, through: :attendance
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

end
