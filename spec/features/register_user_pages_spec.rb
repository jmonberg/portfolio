require 'rails_helper'

describe 'the registering a user process' do
  it 'will provide a section for users to create accounts' do
    visit new_user_registration_path
    expect(page).to have_content("Sign up")
  end

  it 'will create an account upon completion of form' do
    visit new_user_registration_path
    fill_in 'Email', with: "test@test.com"
    fill_in 'Password', with: "123415678"
    fill_in 'Password confirmation', with: "123415678"
    click_button 'Sign up'
    expect(page). to have_content("signed up successfully")
  end

  end
