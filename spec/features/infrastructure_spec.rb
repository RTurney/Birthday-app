
feature 'test infrasture' do
  scenario 'Can run app and see content' do
    visit('/')
    expect(page).to have_content 'Page works!'
  end
end
