require 'rails_helper'

  it 'will delete a category' do
    test_category = FactoryGirl.create(:category)
    visit category_path(test_category)
    click_link 'Delete'
    expect(page).to have_content("successfully deleted")
  end
end
