class CategoriesController < ApplicationController
    before_action :set_category, only: %i[update show destroy edit]


  def create
    @category = Category.create(category_params)

    redirect_to categories_path, notice: 'Нова категорія створена'
  end

  def update
    @category.update(category_params)

    redirect_to categories_path, notice: 'Категорія збережена'
  end

  def destroy
    @category.destroy

    redirect_to categories_path, notice: 'Категорія видалена'
  end

  def  show
  end

  def index
    # @category = Category.new
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def edit
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
