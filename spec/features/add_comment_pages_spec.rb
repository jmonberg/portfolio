require 'rails_helper'
require 'helpers/login_helper'

describe 'the adding a comment path' do
  it 'will offer a section for users to submit comments' do
    post = FactoryGirl.create(:post)
    login_user
    visit post_path(post)
    expect(page).to have_content("Add a Comment")
  end
end
