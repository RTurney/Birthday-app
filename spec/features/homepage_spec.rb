
feature 'Home page' do

  scenario 'user opens the home page' do
    visit('/')
    expect(page).to have_content 'Hello There!'
  end
end
