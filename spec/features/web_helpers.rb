def sign_in_and_play
	visit '/'

    fill_in "player_1", :with => "Nata"
    fill_in 'player_2', :with => "Stu"

    click_on 'submit'
end
