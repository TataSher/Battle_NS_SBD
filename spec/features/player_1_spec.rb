feature 'Player_1' do
	scenario 'see Player 2 Hit Points' do
		sign_in_and_play
		expect(page).to have_content "Emma: 60HP"
	end
end