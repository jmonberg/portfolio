require 'rails_helper'

describe "the add a category process" do
  it "adds a new language category to the portfolio" do
    visit categories_path
    click_on 'Add New Category'
    fill_in 'Name', :with => 'HTML'
    fill_in 'Description', :with => 'Creating basic web pages.'
    click_on 'Create Category'
    expect(page).to have_content 'Category succesfully added!'
  end

  it "gives error when no name is entered" do
    visit new_category_path
    click_on 'Create Category'
    expect(page).to have_content 'errors'
  end
end
