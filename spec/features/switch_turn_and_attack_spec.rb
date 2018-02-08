RSpec.feature 'switch turns and attack other player', type: :feature do
  scenario 'After player 2 is attacked, player 2 attacks player 1' do
    sign_in_and_play
    2.times { click_button 'attack' }
    expect(page).to have_content('Marcus HP: 80')
  end
end
