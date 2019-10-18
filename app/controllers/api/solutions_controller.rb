class Api::SolutionsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
     def show
    @solution = Solution.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def index
    @solutions = Solution.all
    render 'index.json.jb'
  end
  def create
    @solution = Solution.create(
      condition_id: params[:condition_id],
      product_id: params[:product_id]
    )
    if @solution.save
      render 'show.json.jb'
    else
      render json: {errors: @solution.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def update
    @solution = Solution.find_by(id: params[:id])
    @solution.condition_id = params[:condition_id] || @solution.condition_id
    @solution.product_id = params[:product_id] || @solution.product_id
    if @solution.save
      render 'show.json.jb'
    else
      render json: {errors: @solution.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def destroy
    solution = Solution.find_by(id: params[:id])
    solution.destroy
    render json: {message: "you destroyed it you monster"}
  end
end
