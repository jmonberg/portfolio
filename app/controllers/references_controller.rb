class ReferencesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :admin_only, :except => [:new, :create, :index]

  def create
    @reference = Reference.create(reference_params)
    if @reference.save
      respond_to do |format|
        format.html { redirect_to references_path }
        format.js
      end
    else
      render :new
    end
  end

  def index
    @references = Reference.all
  end

  def new
    @post = Post.find(params[:post_id])
    @reference = @post.comments.new
  end

  def edit
  end

  def update
  end

  def destroy
    @reference = Referemce.find(params[:id])
    @reference.destroy
    redirect_to references_path
  end

  private

  def reference_params
    params.require(:reference).permit(:name, :body)
  end

  def admin_only
    unless current_user.admin?
      redirect_to denied_path
    end
  end

end
