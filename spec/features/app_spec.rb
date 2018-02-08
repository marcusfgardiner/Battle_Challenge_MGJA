RSpec.feature 'player names', type: :feature do
  scenario 'Enter player names' do
    sign_in_and_play
    expect(page).to have_content('Marcus') && have_content('Jenny')
  end
end
