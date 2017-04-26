require_relative '../../app'
require 'capybara'

feature Battle do
  it 'shows Player hit points field' do
    visit '/'
    fill_in('player_1_name', with: 'Tim')
    fill_in('player_2_name', with: 'Nigel')
    click_button('Submit')
    expect(page).to have_content "Player 2 Hit Points:"
  end
end
