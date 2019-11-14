class Api::VotesController < ApplicationController
  before_action :authenticate_user, except: [:index]
  def index
    @votes = Vote.all
    render 'index.json.jb'
  end
  def create
    @vote = Vote.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      value: params[:value]
    )
    if @vote.save
      render 'show.json.jb'
    else
      render json: {errors: @vote.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def update
    @vote = Vote.find_by(id: params[:id])
    @vote.upvotes = params[:upvotes] || @vote.upvotes
    @vote.downvotes = params[:downvotes] || @vote.downvotes
    if @vote.save
      render 'show.json.jb'
    else
      render json: {errors: @vote.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
