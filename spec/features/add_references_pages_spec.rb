require 'rails_helper'
require 'helpers/login_helper'

describe "the add a reference process" do
  it "hides/shows a references section", js:true do
    login_user
    reference = FactoryGirl.create(:reference)
    visit categories_path
    click_on 'See References'
    expect(page).to have_content reference.name
  end

  it "hides/shows a references section", js:true do
    login_user
    reference = FactoryGirl.create(:reference)
    visit categories_path
    click_on 'See References'
    click_on 'Add New Reference'
    expect(page).to have_content "Hide References"
  end

  it "allows users to post additional references", js:true do
    login_user
    reference = FactoryGirl.create(:reference)
    visit categories_path
    click_on 'See References'
    click_on "Add New Reference"
    fill_in 'Name', with: "Test Name"
    fill_in 'Body', with: "Test Body"
    click_button "Add Reference"
    expect(page).to have_content "Test Name"
  end




end
