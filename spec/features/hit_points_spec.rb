feature "Hit Points", :type => :feature do
  scenario "hit points displayed" do
    sign_in_and_play
    expect(page).to have_text("Hit points: 25")
  end
end