RSpec.feature 'Hit points for each player', type: :feature do
  scenario 'Hit points for players 2' do
    sign_in_and_play
    expect(page).to have_content 'HP: 100'
  end
end
