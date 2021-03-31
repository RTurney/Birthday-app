feature 'Enter name' do

  scenario 'a user enters their name' do
    visit('/')
    fill_in 'name', with: 'Cletus'
    click_button 'Submit'
    expect(page).to have_content 'Happy Birthday Cletus'
  end
end
