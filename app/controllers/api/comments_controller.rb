class Api::CommentsController < ApplicationController
  before_action :authenticate_user, except: [:index]
  def index
    @comments = Comment.all
    render 'index.json.jb'
  end
  def create
    @comment = Comment.create(
      body: params[:body],
      user_id: current_user.id,
      product_id: params[:product_id]
    )
    if @comment.save
      render 'show.json.jb'
    else
      render json: {errors: @comment.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def destroy
    comment = Comment.find_by(id: params[:id])
    comment.destroy
    render json: {message: "you destroyed it you monster"}
  end
end
