RSpec.feature 'reduce hitpoints', type: :feature do
  scenario 'When player 2 is attacked, display reduce hitpoints' do
    sign_in_and_play
    click_button 'attack player 2'
    expect(page).to have_content('HP: 80') && have_content('Jenny') && have_content('Marcus')
  end
end
