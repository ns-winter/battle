feature "Switches player turns" do
  it "shows that it is Nigel's turn" do
    visit '/'
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).to have_content "It is Nigel's turn"
  end
end
