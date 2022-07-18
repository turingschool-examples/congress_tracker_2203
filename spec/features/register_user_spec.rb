require 'rails_helper'

RSpec.describe "User registration form" do
  it "creates new user" do
    visit root_path

    click_on "Register as a User"

    expect(current_path).to eq(new_user_path)

    email = "happy@me.com"
    password = "test"

    fill_in :user_email, with: email
    fill_in :user_password, with: password
    fill_in :user_password_confirmation, with: password

    click_on "Create User"

    expect(page).to have_content("Welcome, #{email}!")
  end
end
