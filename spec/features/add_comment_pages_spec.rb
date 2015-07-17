require 'rails_helper'
require 'helpers/login_helper'

describe 'the adding a comment path' do
  it 'will offer a section for users to submit comments', js:true do
    post = FactoryGirl.create(:post)
    login_user
    visit post_path(post)
    expect(page).to have_content("Add Comment")
  end

  it 'will post user comments to the blog entry page', js:true do
    login_user
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_link("Add Comment")
    fill_in 'Name', :with => 'Name'
    fill_in 'Body', :with => 'This is a comment.'
    click_button 'Add Comment'
    expect(page). to have_content('This is a comment.')
  end

  it 'will not post blank comments', js:true do
    login_user
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_link("Add Comment")
    fill_in 'Name', :with => 'Test'
    fill_in 'Body', :with => ''
    click_button 'Add Comment'
    expect(page).to have_content('This post has 0 comments')
  end


end
