require "rails_helper"

describe Comment do

  it "should have content" do
    comment = Comment.create(content: "Test content")
    expect(comment.reload.content).to eq "Test content"
  end

  it "should belong to a post" do
    post = Post.create(title: "Test title", content_md: "Markdown content")
    comment = post.comments.create(content: "Test content")
    expect(comment.reload.post).to eq post
    expect(post.reload.comments).to eq [comment]
    expect(post.reload.comments).to include comment
  end


  # it "should have the correct title" do
  #   post = Post.create(title: "Test title", content_md: "Markdown content")
  #   expect(post.reload.title).to eq "Test title"
  # end
  #
  # it "should be valid with a title and content" do
  #   post = Post.create(title: "Test title", content_md: "Markdown content")
  #   expect(post).to be_valid
  # end
  #
  # it "should not be valid without a title" do
  #   post = Post.create(content_md: "Markdown content")
  #   expect(post).to_not be_valid
  # end
end
