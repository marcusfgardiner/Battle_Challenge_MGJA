feature 'attack player 2' do
  scenario 'displays attack confirmation' do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_content 'Marcus attacked Jenny with some mad rhymes'
  end
end
