require 'spec_helper'

RSpec.feature 'Hit points for each player', type: :feature do
  scenario 'Hit points for players 2' do
    visit '/'
    fill_in 'name_1', with: 'Marcus'
    fill_in 'name_2', with: 'Jenny'
    click_button 'PREEEPPPPARREEE FOR BATTTLLLEEE'
    expect(page).to have_content 'HP: 100'
  end
end
