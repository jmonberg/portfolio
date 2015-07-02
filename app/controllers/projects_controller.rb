class ProjectsController < ApplicationController
  def new
    @category = Category.find(params[:id])
    @project = @category.projects.new
  end
end
