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
end
