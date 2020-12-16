class Event < ApplicationRecord
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'

end
