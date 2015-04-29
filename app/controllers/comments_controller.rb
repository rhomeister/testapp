class CommentsController < ApplicationController

  def create
    @post = Post.friendly.find(params[:post_id])
    @comment = @post.comments.build(params.require(:comment).permit(:content))

    if @comment.save
      redirect_to @post, notice: "Your comment has been posted."
    end

  end

  def inside
  end

end
