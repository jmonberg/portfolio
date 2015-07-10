require 'rails_helper'

describe 'the registering a user process' do
  it 'will provide a section for users to create accounts' do
    visit new_user_registration_path
    expect(page).to have_content("Sign up")
  end

  end
