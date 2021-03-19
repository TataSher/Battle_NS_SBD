def sign_in_and_play
	visit '/'

    fill_in "player_1", :with => "Will"
    fill_in 'player_2', :with => "Emma"

    click_on 'submit'
end
