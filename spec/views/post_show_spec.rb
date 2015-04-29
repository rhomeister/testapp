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
    comment1 = post.comments.create(content: "This is a comment to the post")
    comment2 = post.comments.create(content: "This is the second comment to the post")

    assign(:post, post)
    render
    expect(rendered).to include(comment1.content)
    expect(rendered).to include(comment2.content)
  end
end
