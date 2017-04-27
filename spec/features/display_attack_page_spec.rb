feature "Displays attack" do
  it 'confirms that Nigel has been hit' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Tim attacked Nigel"
  end
end
