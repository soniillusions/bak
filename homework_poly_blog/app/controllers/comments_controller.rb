class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @post.comments.create(comment_params)

    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
