require 'rails_helper'

RSpec.describe "home page" do
  it "shows the comment after commenting to a post" do
    User.create!(email: "jdoe@jdoe.com", password: "secret", confirmed_at: Time.now)
    Post.create!(title: "Post title", content_md: "Post Content")

    visit "/users/sign_in"
    fill_in "Email", with: "jdoe@jdoe.com"
    fill_in "Password", with: "secret"
    click_button "Sign in"

    click_link "Posts"
    click_link "Post title"

    fill_in "comment_content", with: "Comment content"
    click_button "Publish"


    expect(page).to have_text("Comment content")
    expect(page).to have_selector("#flash_notice", text: "Your comment has been posted.")
  end
end
