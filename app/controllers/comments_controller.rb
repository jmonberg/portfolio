class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def comment_params
    params.require(:comment).permit(:name, :body)
  end


end