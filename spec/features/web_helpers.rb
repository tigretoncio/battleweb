def sign_in_and_play
  visit "/"
  fill_in "player_1_name", :with => "Sergio"
  fill_in "player_2_name", :with => "Max"
  click_button "Play"
end

def losing_game
  sign_in_and_play
  19.times do
    click_button("Attack Max")
    click_button("Continue Fighting!")
    click_button("Attack Sergio")
    click_button("Continue Fighting!")
  end
end
