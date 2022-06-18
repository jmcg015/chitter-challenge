feature 'viewing chitter' do
  scenario 'viewing /' do
    visit('/')
    expect(page).to have_content 'Welcome, you Chitter-er' 
  end
end
