class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jb'
  end
   def create
    @user = User.new(
      username: params[:username],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if @user.save
      render 'show.json.jb'
    else
      render json: {errors: @user.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.username = params[:username] || @user.username
    @user.password = params[:password] || @user.password_digest
    @user.save
    if @user.save
      render 'create.json.jb'
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: {message: "You destroyed the user"}
    
  end
end
