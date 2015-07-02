require 'rails_helper'

describe "the edit a project process" do
  it "edits a project" do
    category = Category.create(:name => 'CSS', :description => 'test')
    project = Project.create(:name => "HTML Project", :description => "test", :github => 'test', :category_id => category.id)
    visit category_path(category)
    click_on 'Edit'
    fill_in 'Description', :with => 'Wow!'
    click_on 'Update Project'
    expect(page).to have_content 'successfully'
  end

  it "gives error when no description is entered" do
    category= Category.create(:name => 'CSS', :description => 'test')
    project = Project.create(:name => "HTML Project", :description => "test", :github => 'test', :category_id => category.id)
    visit category_path(category)
    click_on 'Edit'
    fill_in 'Description', :with => ''
    click_on 'Update Project'
    expect(page).to have_content 'errors'
  end

  it "gives error when no name is entered" do
    category = Category.create(:name => 'CSS', :description => 'test')
    project = Project.create(:name => "HTML Project", :description => "test", :github => 'test', :category_id => category.id)
    visit category_path(category)
    click_on 'Edit'
    fill_in 'Name', :with => ''
    click_on 'Update Project'
    expect(page).to have_content 'errors'
  end

  it "gives error when no github is entered" do
    category = Category.create(:name => 'CSS', :description => 'test')
    project = Project.create(:name => "HTML Project", :description => "test", :github => 'test', :category_id => category.id)
    visit category_path(category)
    click_on 'Edit'
    fill_in 'Github', :with => ''
    click_on 'Update Project'
    expect(page).to have_content 'errors'
  end

end
