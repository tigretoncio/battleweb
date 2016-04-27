feature "Hit Points", :type => :feature do
  scenario "hit points displayed" do
    visit "/"
    fill_in "player_1_name", :with => "Sergio"
    fill_in "player_2_name", :with => "Max"
    click_button "Play"

    expect(page).to have_text("Hit points: 25")
  end
end