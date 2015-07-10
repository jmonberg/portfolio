require 'rails_helper'
require 'helpers/login_helper'

describe 'the adding a comment path' do
  it 'will offer a section for users to submit comments' do
    post = FactoryGirl.create(:post)
    login_user
    visit post_path(post)
    expect(page).to have_content("Add a Comment")
  end

  it 'will post user comments to the blog entry page' do
    login_user
    post = FactoryGirl.create(:post)
    visit post_path(post)
    fill_in 'Name', :with => 'Name'
    fill_in 'Body', :with => 'This is a comment.'
    click_button 'Create Comment'
    expect(page). to have_content('This is a comment.')
  end

  it 'will not post blank comments' do
    login_user
    post = FactoryGirl.create(:post)
    visit post_path(post)
    fill_in 'Name', :with => 'Name'
    fill_in 'Body', :with => ''
    click_button 'Create Comment'
    expect(page).to have_content('This post has 0 comments')
  end

  it 'will not accept comments without names' do
    login_user
    post = FactoryGirl.create(:post)
    visit post_path(post)
    fill_in 'Name', :with => ''
    fill_in 'Body', :with => 'asdfasdf'
    click_button 'Create Comment'
    expect(page).to have_content('This post has 0 comments')
  end

end
