def sign_in_and_play
  visit '/'
  fill_in('player_1_name', with: 'Tim')
  fill_in('player_2_name', with: 'Nigel')
  click_button('Submit')
end
