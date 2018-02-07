require 'spec_helper'

RSpec.feature "testing infraestructure", :type => :feature do
  scenario "testing infraestructure page" do
    visit "/"
    expect(page).to have_text("Testing infrastructure working!")
  end
end
