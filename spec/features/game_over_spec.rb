feature "Displays the winner and loser", :type => :feature do
  scenario "when the game is over" do
    visit('/game_over')
    expect(page).to have_text("Game Over")
  end
end
