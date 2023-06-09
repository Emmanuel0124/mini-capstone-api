class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id, 
      product_id: params[:product_id], 
      quantity: params[:quantity], 
      status: "carted",

    )
    @carted_product.save
    render :show
  end
  def index
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    render :index
  end
  
end
