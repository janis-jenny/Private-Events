# rubocop:disable Layout/LineLength

require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'is valid if all the fields are provided' do
    user = User.create(name: 'Jenny', email: 'jenny@jenny.com')
    expect(Event.create(title: 'title', description: 'description', date: '25/02/2021', location: 'peru', user_id: user.id)).to be_valid
  end

  it 'is not valid if only one field is provide' do
    user = User.create(name: 'Jenny', email: 'jenny@jenny.com')
    expect(Event.create(title: 'title', user_id: user.id)).to_not be_valid
  end
end

# rubocop:enable Layout/LineLength
