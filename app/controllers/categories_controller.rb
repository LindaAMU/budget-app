class CategoriesController < ApplicationController
  before_action :set_category, only: %i[edit update destroy type_converter]
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user = current_user
    if @category.save
      redirect_to categories_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, status: :see_other
  end

  def edit
  end

  def update
    @category.update(category_params)
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :category_type)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
