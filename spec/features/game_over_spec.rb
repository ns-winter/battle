feature "Game Over" do
  it "shows Game Over screen" do
    visit '/'
    sign_in_and_play
    $game.player_2.hit_points = 10
    click_button "Attack"
    click_button "OK"
    expect(page).to have_content "Game Over!"
  end
end
