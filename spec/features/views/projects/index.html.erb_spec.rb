require 'rails_helper'

RSpec.describe "projects/index.html.erb", type: :feature do
  describe "Projects index features" do
    it "Visitor can see a list of existing projects" do
      visit projects_path

      expect(page).to have_content("Projects")
    end
  end
end
