
feature 'homepage' do
  
  scenario 'works' do
    visit '/'
    expect(page).to have_content("Welcome to Chitter")
  end
end