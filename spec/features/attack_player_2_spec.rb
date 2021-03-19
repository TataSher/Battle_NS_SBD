feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Will attacked Emma'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Emma: 50HP'
  end
end
