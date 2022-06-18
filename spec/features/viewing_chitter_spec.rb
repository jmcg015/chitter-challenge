feature 'viewing chitter' do
  scenario 'viewing /' do
    visit('/')
    expect(page).to have_content 'Welcome, you Chitter-er' 
  end

  scenario 'viewing chits' do
    visit('/chitter')
    expect(page).to have_content "Look ma, I'm chitting"
    expect(page).to have_content "Listen here, you little chit..."
    expect(page).to have_content "Chitty, chitty, bang, bang"
  end
end
