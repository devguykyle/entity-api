class ProductsController < ApplicationController
before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.ordered
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      respond_to do |format|
        format.html { redirect_to products_path, notice: "Product created successully" }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to products_path, notice: "product successfully updated"
    else
    render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_path, notice: "product deleted" }
      format.turbo_stream
    end
  end


  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:product_upc)
  end
end
