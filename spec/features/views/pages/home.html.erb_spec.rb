require 'rails_helper'

RSpec.describe "pages/home.html.erb", type: :feature do
  describe "Home page features" do
    it 'User can visit homepage' do
      visit root_path
      
      expect(page).to have_content("Nico Rithner")
    end
  end
end
