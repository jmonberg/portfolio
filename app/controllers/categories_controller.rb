class CategoriesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :admin_only, :except => [:show, :index]

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
      flash[:notice] = "Category successfully added!"
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to categories_path
      flash[:notice] = "Category successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
    flash[:notice] = "Category successfully deleted!"

  end

private

  def category_params
    params.require(:category).permit(:name, :description)
  end

  def admin_only
    unless current_user.admin?
      redirect_to categories_path, :alert => "Access Denied"
    end
  end

end
