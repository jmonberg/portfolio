class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :admin_only, :except => :show

  def new
    @category = Category.find(params[:category_id])
    @project = @category.projects.new
  end

  def index
  end

  def create
    @category = Category.find(params[:category_id])
    @project = @category.projects.new(project_params)
    if @project.save
      flash[:notice] = "Project successfully added!"
      redirect_to category_path(@project.category)
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
    @category = @project.category
  end

  def edit
    @category = Category.find(params[:category_id])
    @project = Project.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = "Project successfully updated!"
      redirect_to category_project_path(@category, @project)
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @project = Project.find(params[:id])
    if @project.destroy
    redirect_to category_path(@category)
  end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :github)
  end

  def admin_only
    unless current_user.admin?
      redirect_to category_path(@category), :alert => "Access Denied"
    end
  end

end
