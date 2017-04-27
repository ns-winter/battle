feature "Reduces hit points" do
  scenario "Player 2 takes 10 damage" do
    sign_in_and_play
    click_button "Attack Player 2"
    click_button "OK"
    expect(page).to have_content "Player 2 Hit Points: 90"
  end
end
