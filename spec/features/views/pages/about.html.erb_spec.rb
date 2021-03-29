require 'rails_helper'

RSpec.describe "pages/about.html.erb", type: :feature do
  describe "about page features" do
    it 'User can visit about page' do
      visit about_path

      expect(page).to have_content("About")
    end
  end
end

