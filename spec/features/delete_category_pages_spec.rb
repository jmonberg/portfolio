require 'rails_helper'

describe 'the deleting a category path' do
  it 'will offer a delete option' do
    test_category = FactoryGirl.create(:category)
    visit '/'
    click_link test_category.name
    expect(page).to have_content("Delete")
  end

  it 'will delete a category' do
    test_category = FactoryGirl.create(:category)
    visit category_path(test_category)
    click_link 'Delete'
    expect(page).to have_content("successfully deleted")
  end
end
