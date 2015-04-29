require "rails_helper"

describe Comment do
  it "should belong to a post" do
    post = Post.create(title: "Test title", content_md: "Markdown content")

    comment = post.comments.create!(content: "This is a comment")

    expect(post.comments).to eq [comment]
    expect(comment.post).to eq post
  end
end
