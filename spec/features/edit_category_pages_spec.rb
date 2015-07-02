require 'rails_helper'

describe "the edit a task process" do
  it "edits a task" do
    category = Category.create(:name => 'CSS', :description => 'test')
    project = Project.create(:name => 'My Webpage', :description => 'Basic Portfolio', :github => 'testgithub', :list_id => list.id)
    visit project_path(project)
    click_on 'Edit'
    fill_in 'Description', :with => 'The coolest website ever'
    click_on 'Update Task'
    expect(page).to have_content 'successfully'
  end

  it "gives error when no description is entered" do
    category = Category.create(:name => 'CSS', :description => 'test')
    project = Project.create(:name => 'My Webpage', :description => 'Basic Portfolio', :github => 'testgithub', :list_id => list.id)
    visit project_path(project)
    click_on 'Edit'
    fill_in 'Description', :with => ''
    click_on 'Update Task'
    expect(page).to have_content 'errors'
  end
end
