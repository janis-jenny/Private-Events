class Event < ApplicationRecord
  #belongs_to :users, foreign_key: "user_id", class_name: "User"
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
end
