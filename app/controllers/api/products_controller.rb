class Api::ProductsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def index
    @products = Product.all
    render 'index.json.jb'
  end
  def create
    @product = Product.create(
      name: params[:name],
      effects: params[:effects],
      image_url: params[:image_url],
      description: params[:description],
      user_id: current_user.id
      )
    if @product.save
      if params[:condition_ids]
        params[:condition_ids].each do |condition_id|
          Solution.create(
            condition_id: condition_id,
            product_id: @product.id
          )
        end
      end
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.effects = params[:effects] || @product.effects
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.user_id = params[:user_id] || @product.user_id
    if @product.save
      @product.solutions.destroy_all

      if params[:condition_ids]
        params[:condition_ids].each do |condition_id|
          Solution.create(
            condition_id: condition_id,
            product_id: @product.id
          )
        end
      end
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "you destroyed it you monster"}
  end
end
