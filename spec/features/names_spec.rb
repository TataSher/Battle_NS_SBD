feature 'names' do
  scenario 'People fill in their names, submit it, and see their names on screen' do
    sign_in_and_play
    expect(page).to have_text "Will vs. Emma"
  end
end
