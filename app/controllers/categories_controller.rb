class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @categories = Category.all.includes(:selled_products).order(id: "ASC")
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path, notice: "新しくカテゴリーを作成しました"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path, notice: "カテゴリーを編集しました"
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, notice: 'カテゴリーを削除しました'
  end

  private
  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
