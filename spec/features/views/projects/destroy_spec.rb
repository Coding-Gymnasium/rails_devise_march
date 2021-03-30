require 'rails_helper'

RSpec.describe "Project Destroy Action", type: :feature do
  describe "Projects can be destroyed" do
    before :each do
      @projects = create_list(:project, 3)
    end
    it "Visitor can see a list of existing projects" do
      visit projects_path
      expect(page).to have_content("Projects")
      expect(@projects.count).to eq(3)

      within("#project-#{@projects.first.id}") do
        expect(page).to have_content(@projects.first.title)
        expect(page).to have_link("Destroy")
        click_on('Destroy')
      end
      #expect(@projects.count).to eq(2)
      expect(page).to_not have_content(@projects.first.title)
    end
  end
end

