class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index 
  end
  def show 
    @product = Product.find_by(id: params[:id])
    render :show
  end  
  def create
    @product = Product.new(name: "fire_truck", price: "4", image_url: "https://www.3000toys.com/images/ERTL/46731-CNP.jpg", description: "its loud and red")
  end
end  