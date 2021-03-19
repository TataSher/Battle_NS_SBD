feature 'Switch Turn' do
    scenario 'change turn from player1 to player2' do
      sign_in_and_play
      expect(page).to have_content "Will's turn"
      click_button 'Attack'
      expect(page).to have_content "Will attacked Emma"
      expect(page).to have_content "Emma's turn"
    end
end