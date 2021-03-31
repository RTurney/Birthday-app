
feature 'Enter birthday date' do

  scenario 'a user enters their birthday' do
    visit('/')
    fill_in 'name', with: 'Markus'
    fill_in 'day', with: '31'
    fill_in 'month', with: 'March'
    click_button 'Submit'
    expect(page).to have_content 'Happy Birthday Markus'
  end
end
