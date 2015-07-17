class CommentsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :admin_only, :except => [:new, :create]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if @comment.save
      respond_to do |format|
        format.html { redirect_to post_path(@comment.post) }
        format.js
      end
    else
      flash[:notice] = "There was an error saving your comment."
    end
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def edit
  end

  def update
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

private

  def comment_params
    params.require(:comment).permit(:name, :body)
  end

  def admin_only
    unless current_user.admin?
      @post = Post.find(params[:id])
      redirect_to denied_path
    end
  end

end
