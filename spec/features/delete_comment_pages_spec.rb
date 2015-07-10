require 'rails_helper'
require 'helpers/login_helper'


# describe 'the deleting a comment' do
#   it 'will not allow users to delete comments' do
#     post = FactoryGirl.create(:post)
#     login_user
#     visit post_path(post)
#     fill_in 'Name', :with => 'Name'
#     fill_in 'Body', :with => 'This is a comment.'
#     click_button 'Create Comment'
#     click_link 'Delete Comment'
#     expect(page).to have_content("Access Denied")
#   end
# end
