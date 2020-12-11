class AddUserIdToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :user_id, null: false, foreign_key: true
  end
end
