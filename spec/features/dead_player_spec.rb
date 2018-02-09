RSpec.feature 'Player dies, display message', type: :feature do
  scenario 'Player 2 dies' do
    sign_in_and_play
    9.times{click_button('attack')}
    expect(page).to have_content 'Jenny died. Marcus is the best MC ever *mic drop*'
  end
end
