require "rails_helper"

describe "posts/show" do
  it "displays the title and content" do
    assign(:post, Post.create!(title: "Testing is fun", content_md: "This is the content"))
    render
    expect(rendered).to include("Testing is fun")
    expect(rendered).to include("This is the content")
  end

  it "displays the comments" do
    post = Post.create!(title: "Testing is fun", content_md: "This is the content")
    post.comments.create!(content: "I disagree! ROFLMAO")
    assign(:post, post)
    render
    expect(rendered).to include("I disagree! ROFLMAO")
  end
end
