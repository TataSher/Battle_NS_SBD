feature 'Switch Turn' do
    scenario 'change turn from player1 to player2' do
      sign_in_and_play
      expect(page).to have_content "Nata's turn"
      click_button 'Attack'
      expect(page).to have_content "Nata attacked Stu"
      click_button 'Next Turn!'
      expect(page).to have_content "Stu's turn"
    end
end