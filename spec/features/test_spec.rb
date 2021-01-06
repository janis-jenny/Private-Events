require 'rails_helper'

describe 'Event', :type => :feature do
  before :each do
    User.create(name: 'Jenny', email: 'jenny@jenny.com')
    visit "/login"
    fill_in 'Name', with: 'Jenny'

    find("input[type='submit']").click
  end
  it "redirect to event index when the event is created" do
    visit "/events/new"
    fill_in 'Title', with: 'Event6'
    fill_in 'Description', with: 'Independance day'
    fill_in 'event_date', with: '28/07/2021'
    fill_in 'event_location', with: 'Peru'
    find("input[type='submit']").click
    expect(page).to have_content('Jenny')
  end
end
