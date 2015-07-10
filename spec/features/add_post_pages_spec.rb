require 'rails_helper'
require 'helpers/login_helper'

describe 'the adding a blog post path' do
  it 'will only allow admins to post' do
    login_user
    visit new_post_path
    expect(page).to have_content('Access Denied')
  end

  it 'will allow admins to post' do
    login_admin
    visit new_post_path
    expect(page).to have_content('New Post')
  end

  it 'will save and display new posts' do
    login_admin
    visit new_post_path
    fill_in 'Title', :with => 'Test Title'
    fill_in 'Content', :with => 'Creating basic web pages.'
    click_button 'Create Post'
    expect(page).to have_content('Test Title')
  end

  it 'will not save without title' do
    login_admin
    visit new_post_path
    fill_in 'Title', :with => ''
    fill_in 'Content', :with => 'Creating basic web pages.'
    click_button 'Create Post'
    expect(page).to have_content('errors')
  end

  it 'will not save without content' do
    login_admin
    visit new_post_path
    fill_in 'Title', :with => 'Test Title'
    fill_in 'Content', :with => ''
    click_button 'Create Post'
    expect(page).to have_content('errors')
  end

  it 'will allow admins to edit' do
    login_admin
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_link 'Edit'
    expect(page).to have_content('Edit Post')
  end

  it 'will not allow users to edit' do
    login_user
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_link 'Edit'
    expect(page).to have_content('Access Denied')
  end

   it 'will save changes made when editing' do
     login_admin
     post = FactoryGirl.create(:post)
     visit post_path(post)
     click_link 'Edit'
     fill_in 'Title', :with => 'New Edited Title'
     fill_in 'Content', :with => 'Creating basic web pages.'
     click_button('Update Post')
     expect(page).to have_content('New Edited Title')
   end

   it 'will allow admins to delete posts' do
     login_admin
     post = FactoryGirl.create(:post)
     visit post_path(post)
     click_link 'Delete'
     expect(page).to have_content('no blog posts')
   end

   it 'will not allow users to delete posts' do
     login_user
     post = FactoryGirl.create(:post)
     visit post_path(post)
     click_link 'Delete'
     expect(page).to have_content('Access Denied')
   end
end
