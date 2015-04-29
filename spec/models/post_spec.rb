require "rails_helper"

describe Post do
  it "should have the correct title" do
    post = Post.create(title: "Test title", content_md: "Markdown content")
    expect(post.reload.title).to eq "Test title"
  end

  it "should be valid with a title and content" do
    post = Post.create(title: "Test title", content_md: "Markdown content")
    expect(post).to be_valid
  end

  it "should not be valid without a title" do
    post = Post.create(content_md: "Markdown content")
    expect(post).to_not be_valid
  end
end
