def sign_in_and_play
  visit "/"
  fill_in "player_1_name", :with => "Sergio"
  fill_in "player_2_name", :with => "Max"
  click_button "Play"
end