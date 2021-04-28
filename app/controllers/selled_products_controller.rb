class SelledProductsController < ApplicationController
  before_action :set_selled_product, only: [:show, :edit, :update, :destroy]

  def index
    @selled_products = SelledProduct.all.includes(:category).order(id: :desc)
    @selled_product = SelledProduct.new
  end

  def show
  end

  def create
    @selled_product = SelledProduct.new(selled_product_params)
    if @selled_product.save
      redirect_to selled_products_path, notice: "新しく売り上げを登録しました"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @selled_product.update(selled_product_params)
      redirect_to selled_products_path, notice: "売り上げを編集しました"
    else
      render :edit
    end
  end

  def destroy
    @selled_product.destroy
    redirect_to selled_products_path, notice: 'カテゴリーを削除しました'
  end

  private
  def set_selled_product
    @selled_product = SelledProduct.find(params[:id])
  end

  def selled_product_params
    params.require(:selled_product).permit(:name, :price, :category_id)
  end
end
