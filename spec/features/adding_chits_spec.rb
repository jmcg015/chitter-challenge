feature 'adding chits' do
  scenario 'A user can add a chit to Chitter' do
  visit('chitter/new')
  fill_in(:content, with: "My first chit")
  click_button('Post')
  expect(page).to have_content "My first chit"
  end
end