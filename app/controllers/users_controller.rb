class UsersController < ApplicationController
  before_action :set_users, only: [:show, :edit, :update]
  # before_action :set_user

  def index
    @users = User.all
  end

  def show
    @user = User.find
  end

  def new
    @user = User.new
  end

  private
  def set_users
    @user = User.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:nombre, :apellido, :alumnonombrecompleto, :foto, :email)
  end
end
