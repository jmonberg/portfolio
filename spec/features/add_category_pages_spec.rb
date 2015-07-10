require 'rails_helper'
require 'helpers/login_helper'

describe "the add a category process" do
  it "adds a new language category to the portfolio" do
    login_admin
    visit categories_path
    click_on 'Add New Category'
    fill_in 'Name', :with => 'HTML'
    fill_in 'Description', :with => 'Creating basic web pages.'
    click_on 'Create Category'
    expect(page).to have_content 'Category successfully added!'
  end

  it "gives error when no name is entered" do
    login_admin
    visit new_category_path
    fill_in "Description", :with => 'test'
    fill_in "Name", :with => ''
    click_on 'Create Category'
    expect(page).to have_content 'errors'
  end

  it "gives error when no description is entered" do
    login_admin
    visit new_category_path
    fill_in "Name", :with => 'test'
    fill_in "Description", :with => ''
    click_on 'Create Category'
    expect(page).to have_content 'errors'
  end

  it "does not allow non-admins to add categories" do
    login_user
    visit new_category_path
    expect(page).to have_content 'Access Denied'
  end
end
