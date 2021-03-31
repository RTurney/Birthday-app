
feature 'calculate days until birthday' do

  scenario 'tomorrow is your birthday' do
    visit('/')
    fill_in 'name', with: 'Porygon'
    fill_in 'day', with: '01'
    fill_in 'month', with: '2020-04'
    click_button 'Submit'
    expect(page).to have_content '1 days left'
  end

  scenario 'yesterday was your birthday' do
    visit('/')
    fill_in 'name', with: 'Zuzia'
    fill_in 'day', with: '30'
    fill_in 'month', with: '2020-03'
    click_button 'Submit'
    expect(page).to have_content '364 days left'
  end

  scenario 'today is your birthday' do
    visit('/')
    fill_in 'name', with: 'Roger'
    fill_in 'day', with: '31'
    fill_in 'month', with: '2020-03'
    click_button 'Submit'
    expect(page).to have_content 'Happy Birthday Roger'
  end
end
