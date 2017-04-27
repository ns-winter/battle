feature "Displays attack" do
  it 'confirms that Nigel has been hit' do
    sign_in_and_play
    click_button "Attack Player 2"
    expect(page).to have_content "Nigel has been hit!"
  end
end
