feature "Show hit points" do
  it 'shows Player hit points field' do
    visit '/'
    sign_in_and_play
    expect(page).to have_content "Player 2 Hit Points:"
  end
end
