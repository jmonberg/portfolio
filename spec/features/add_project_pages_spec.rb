require 'rails_helper'

describe "the add a project process" do
  it "adds a new project under a language category to the portfolio" do
    category = Category.create(:name => "HTML", :description => "test")
    visit category_path(category)
    click_on 'Add a project'
    fill_in 'Name', :with => 'Basic Website'
    fill_in 'Description', :with => 'Creating basic web pages.'
    fill_in 'Github', :with => 'test'
    click_on 'Create Project'
    expect(page).to have_content 'Project successfully added!'
  end

  it "gives error when no name is entered" do
    category = Category.create(:name => "HTML", :description => "test")
    visit category_path(category)
    click_on 'Add a project'
    fill_in 'Name', :with => ''
    fill_in 'Description', :with => 'Creating basic web pages.'
    fill_in 'Github', :with => 'test'
    click_on 'Create Project'
    expect(page).to have_content 'errors'
  end

  it "gives error when no description is entered" do
    category = Category.create(:name => "HTML", :description => "test")
    visit category_path(category)
    click_on 'Add a project'
    fill_in 'Name', :with => 'Basic Website'
    fill_in 'Description', :with => ''
    fill_in 'Github', :with => 'test'
    click_on 'Create Project'
    expect(page).to have_content 'errors'
  end

  it "gives error when no github repo is entered" do
    category = Category.create(:name => "HTML", :description => "test")
    visit category_path(category)
    click_on 'Add a project'
    fill_in 'Name', :with => 'Basic Website'
    fill_in 'Description', :with => ''
    fill_in 'Github', :with => ''
    click_on 'Create Project'
    expect(page).to have_content 'errors'
  end
end
