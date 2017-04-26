require_relative '../../app'
require 'capybara'

feature Battle do
  it 'confirms that Player 2 has been hit' do
    sign_in_and_play
    click_button "Attack Player 2"
    expect(page).to have_content "Player 2 has been hit!"
  end
end
