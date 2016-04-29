def sign_in_and_play
  visit "/"
  fill_in "player_1_name", :with => "Sergio"
  fill_in "player_2_name", :with => "Max"
  click_button "Play"
end

def losing_game_max
  allow(Kernel).to receive(:rand).and_return(30)
  click_button("Attack Max")
end

def losing_game_sergio
  allow(Kernel).to receive(:rand).and_return(30)
  click_button("Attack Sergio")
end
