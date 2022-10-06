require 'csv'
class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  
  def index
    @users = User.all
    if params[:format] == "json"
      render json: @users
    elsif params[:format] == "csv"

        send_data @users.to_csv, filename: "users-#{Date.today}.csv"
    else
         render json: @users
    end
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render error: {error: 'unable to create User.'}, status: 400
    end
  end

  def update
    if @user
      @user.update(user_params)
      render json: {message: 'User updated successfully'}, status: 200
    else
      render error: {error: 'unable to update User'}, status: 400
    end
  end

  def destroy
    if @user
      @user.destroy
      render json: {message: 'User successfully deleted'}, status: 200
    else
      render json: {error: 'Unable to delete user'}, status: 400
    end
  end

  private

  def user_params
          params.permit(:username, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
