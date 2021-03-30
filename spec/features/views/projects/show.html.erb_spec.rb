require 'rails_helper'

RSpec.describe "projects/show.html.erb", type: :feature do
  describe "Projects show features" do
    before :each do
      @project = Project.create!(title: "New Project", content: "Sample content for my project")
    end

    it "Visitor can see a specific project" do
      visit project_path(@project)

      expect(page).to have_content(@project.title)
      expect(page).to have_content(@project.content)
    end
  end
end

