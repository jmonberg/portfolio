class ProjectsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @project = @category.projects.new
  end

  def create
    @category = Category.find(params[:category_id])
    @project = @category.projects.new(project_params)
    if @project.save
      redirect_to category_path(@project.category)
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
    @category = @project.category
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :github)
  end

end
