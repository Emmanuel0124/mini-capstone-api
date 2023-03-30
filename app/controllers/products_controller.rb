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
    @product = Product.new(
      name: params[:name], 
      price: params[:price], 
      image_url: params[:image_url], 
      description: params[:description]
    )
    @product.save
    render :show
  end
  def update
    @product = Product.find_by(id: params[:id])
    @product.name = "action_figure"
    @product.price = 8
    @product.image_url = "https://ae01.alicdn.com/kf/Sc4521cc7aa7e4d39a058d63ca6693c1fE/Japan-Anime-Dragon-Ball-Z-Original-BANDAI-SPIRITS-S-H-Figuarts-SHF-Exclusive-Action-Figure-Great.jpg"
    @product.description = "posable super hero"
    @product.save
    render :show
  end 
end  