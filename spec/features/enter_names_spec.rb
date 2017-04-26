feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Nigel'
    fill_in :player_2_name, with: 'Peter'
    click_button 'Submit'
    expect(page).to have_content ('Nigel') && ('Peter')
  end
end
