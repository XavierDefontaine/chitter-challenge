
feature 'homepage' do
  
  scenario 'works' do
    visit '/'
    expect(page).to have_content "Welcome to Chitter" 
  end

  scenario 'add Peep' do
    visit '/'
    fill_in "text", with: "I love this website!"
    click_on "Post!" 
    expect(page).to have_content "I love this website!" 
  end
end