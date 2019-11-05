class Api::UsersController < ApplicationController
   before_action :authenticate_user, except: [:create]
  def index
    @users = User.all
    render 'index.json.jb'
  end
  def show

    @user = User.find_by(id: params[:id])
    if current_user == @user
      render 'show.json.jb'
    else 
      render json: {message: "Unauthorized"},
        status: :unauthorized
    end
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
    # @user = User.find_by(id: params[:id])
    @user = current_user
    @user.username = params[:username] || @user.username
    if params[:password]
      @user.password = params[:password]
    end
    @user.admin = params[:admin] || @user.admin
    @user.save
    if @user.save
      render 'show.json.jb'
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
