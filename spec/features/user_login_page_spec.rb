require 'rails_helper'
require 'helpers/login_helper'


describe "user log in" do
  it "allows an existing user to sign in" do
    user = FactoryGirl.create(:user)
    visit "/users/sign_in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"
    expect(page).to have_content("Signed in successfully.")
  end
end
