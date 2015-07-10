require 'rails_helper'

def login_admin(user = nil)
  admin = FactoryGirl.create :admin
  visit new_user_session_path
  fill_in 'Email', :with => admin.email
  fill_in 'Password', :with => admin.password
  click_button "Log in"
  admin
end
