
feature "Hit Points", :type => :feature do
  scenario "hit points displayed" do
    sign_in_and_play
    expect(page).to have_text("Sergio Hit points: #{Player::HP}")
    expect(page).to have_text("Max Hit points: #{Player::HP}")
  end

  scenario "attack reduces HP" do
    sign_in_and_play
    click_button("Attack Max")
    click_button("Continue Fighting!")
    click_button("Attack Sergio")
    expect(page).to have_text("Max successfully attacked Sergio")
  end

  scenario "attack switches player " do
    sign_in_and_play
    click_button("Attack Max")
    click_button("Continue Fighting!")
    expect(page).to have_content "Hit points: #{Player::HP}"
    #expect(page).to have_text("Hit points: #{Player::HP - Player::DAMAGE}")
  end

  scenario "Sergio wins" do
    sign_in_and_play
    losing_game_max
    expect(page).to have_content "Game Over"
    expect(page).to have_text("Sergio wins the game")
  end

  scenario "Max wins" do
    sign_in_and_play
    click_button("Attack Max")
    click_button("Continue Fighting!")
    losing_game_sergio
    expect(page).to have_content "Game Over"
    expect(page).to have_text("Max wins the game")
  end
end
