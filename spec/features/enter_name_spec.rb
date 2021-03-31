# frozen_string_literal: true

feature 'Enter name' do
  scenario 'a user enters their name' do
    visit('/')
    fill_in 'name', with: 'Cletus'
    fill_in 'day', with: '31'
    fill_in 'month', with: '2020-03'
    click_button 'Submit'
    expect(page).to have_content 'Happy Birthday Cletus'
  end
end
