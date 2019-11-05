class Api::ConditionsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
   def show
    @condition = Condition.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def index
    @conditions = Condition.all
    render 'index.json.jb'
  end
  def create
    @condition = Condition.create(
      name: params[:name],
      image_url: params[:image_url],
      description: params[:description],
      user_id: current_user.id
    )
    if @condition.save
      render 'show.json.jb'
    else
      render json: {errors: @condition.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def update
    @condition = Condition.find_by(id: params[:id])
    @condition.name = params[:name] || @condition.name
    @condition.image_url = params[:image_url] || @condition.image_url
    @condition.description = params[:description] || @condition.description
    if @condition.save
      render 'show.json.jb'
    else
      render json: {errors: @condition.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def destroy
    condition = Condition.find_by(id: params[:id])
    condition.destroy
    render json: {message: "you destroyed it you monster"}
  end
end
