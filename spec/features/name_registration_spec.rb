feature "Name Registration", :type => :feature do
  scenario "Form available for player names" do
    visit "/"

    fill_in "player_1_name", :with => "Sergio"
    fill_in "player_2_name", :with => "Max"
    click_button "Play"

    expect(page).to have_text("Sergio vs Max FIGHT!")
  end
end