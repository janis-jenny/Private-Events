require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is not valid if email is not provided' do
    expect(User.create(name: 'user1')).to_not be_valid
  end

  it 'is not valid if name is not provided' do
    expect(User.create(email: 'user1@test.com')).to_not be_valid
  end

  it 'is valid if email and username are provided' do
    expect(User.create(name: 'user1', email: 'user1@test.com')).to be_valid
  end
end