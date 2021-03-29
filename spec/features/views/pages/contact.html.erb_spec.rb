require 'rails_helper'

RSpec.describe "pages/contact.html.erb", type: :feature do
  describe "Contact page features" do
    it 'User can visit Contact page' do
      visit contact_path

      expect(page).to have_content("Contact Me")
    end
  end
end

