require 'rails_helper'

describe 'Attendance', type: :feature do
  before :each do
    User.create(name: 'Jenny', email: 'jenny@jenny.com')
    visit '/login'
    fill_in 'Name', with: 'Jenny'
    find("input[type='submit']").click
    visit 'events/new'
    fill_in 'Title', with: 'Event1'
    fill_in 'Description', with: 'Independance day'
    fill_in 'event_date', with: '28/07/2021'
    fill_in 'event_location', with: 'Peru'
    find("input[type='submit']").click
  end
  it 'redirect to event show if click on event title' do
    visit '/events'
    click_on('More details...')
    expect(current_path).to eql('/events/1')
  end
  it 'create attendees in the current event' do
    visit '/events/1'
    expect(current_path).to eql('/events/1')
    click_on('Go')
    expect(page).to have_selector('li', text: 'Jenny')
  end
end
