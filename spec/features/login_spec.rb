require 'rails_helper'

RSpec.describe "home page" do
  it "displays the user's username after successful login" do
    User.create!(email: "jdoe@jdoe.com", password: "secret", confirmed_at: Time.now)

    visit "/users/sign_in"
    fill_in "Email", with: "jdoe@jdoe.com"
    fill_in "Password", with: "secret"
    click_button "Sign in"

    expect(page).to have_selector("#flash_notice", text: "Signed in successfully.")
  end
end
