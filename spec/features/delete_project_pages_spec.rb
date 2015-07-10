require 'rails_helper'
require 'helpers/login_helper'


describe "the delete a project process" do
  it "allows admins to delete projects" do
    category = FactoryGirl.create(:category)
    login_admin
    visit category_path(category)
    click_on 'Add a project'
    fill_in 'Name', :with => 'Basic Website'
    fill_in 'Description', :with => 'Creating basic web pages.'
    fill_in 'Github', :with => 'test'
    click_on 'Create Project'
    click_on 'Delete Project'
    expect(page).to have_content 'no projects yet'
  end

  # it "does not allow users to delete projects" do
  #   category = FactoryGirl.create(:category)
  #   project = Project.create({name: 'alskjfdads', description: 'alksjdfl', id: 2584, category_id: category.id })
  #   login_user
  #   visit category_project_path(category.id, project.id)
  #   click_on 'Delete Project'
  #   expect(page).to have_content 'Access Denied'
  # end
end
