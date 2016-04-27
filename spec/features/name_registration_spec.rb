feature "Name Registration", :type => :feature do
  scenario "Form available for player names" do
    sign_in_and_play
    expect(page).to have_text("Sergio vs Max FIGHT!")
  end
end