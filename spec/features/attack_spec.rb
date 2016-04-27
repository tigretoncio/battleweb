feature "Player 1 attacks Player 2", :type => :feature do
  scenario "Page displays confirmation of attack message" do
    sign_in_and_play
    click_button "Attack Max"
    expect(page).to have_text("Sergio successfully attacked Max")
  end
end