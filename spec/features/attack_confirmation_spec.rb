feature 'attack player 2' do
  scenario 'displays attack confirmation' do
    sign_in_and_play
    click_button 'attack player 2'
    expect(page).to have_content 'You attacked player 2 with some mad rhymes'
  end
end
