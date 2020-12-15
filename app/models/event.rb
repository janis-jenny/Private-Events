class Event < ApplicationRecord
  #belongs_to :users, foreign_key: "user_id", class_name: "User"
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
end
