
feature "Hit Points", :type => :feature do
  scenario "hit points displayed" do
    sign_in_and_play
    expect(page).to have_text("Hit points: #{Player::HP}")
  end

  scenario "attack reduces HP" do
    sign_in_and_play
    click_button("Attack Max")
    click_button("Continue Fighting!")
    expect(page).not_to have_content "Hit points: #{Player::HP}"
    expect(page).to have_text("Hit points: #{Player::HP - Player::DAMAGE}")
  end
end