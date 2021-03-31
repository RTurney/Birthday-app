
feature 'calculate days until birthday' do

  scenario 'tomorrow is your birthday' do
    visit('/')
    fill_in 'name', with: 'Porygon'
    fill_in 'day', with: '01'
    fill_in 'month', with: '2020-04'
    click_button 'Submit'
    expect(page).to have_content 'Your birthday will be in 1 days'
  end

  scenario 'yesterday was your birthday' do
    visit('/')
    fill_in 'name', with: 'Zuzia'
    fill_in 'day', with: '30'
    fill_in 'month', with: '2020-03'
    click_button 'Submit'
    expect(page).to have_content 'Your birthday will be in 364 days'
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
