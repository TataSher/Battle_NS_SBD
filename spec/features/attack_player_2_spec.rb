feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Nata attacked Stu'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Stu: 50HP'
  end
end
