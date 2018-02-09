feature 'Displays information on whose turn it is', type: :feature do
  scenario 'First turn is player 1' do
    sign_in_and_play
    expect(find('div.turn')).to have_content("Marcus's turn")
  end

  scenario 'Second turn is player 2' do
    sign_in_and_play
    click_button 'attack'
    expect(find('div.turn')).to have_content("Jenny's turn")
  end
end
