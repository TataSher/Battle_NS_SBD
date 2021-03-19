feature 'play' do
  scenario 'when a players hp is zero a message is shown' do
    sign_in_and_play
    10.times do
      click_button 'Attack'
      click_button 'Next Turn!'
    end
    click_button 'Attack'
    expect(page).to have_content "Nata Wins!"
  end
end
