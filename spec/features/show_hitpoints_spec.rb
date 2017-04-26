require_relative '../../app'
require 'capybara'

feature Battle do
  it 'shows Player hit points field' do
    visit '/'
    sign_in_and_play
    expect(page).to have_content "Player 2 Hit Points:"
  end
end
