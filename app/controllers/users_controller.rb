class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, status: :see_other
  end

  private
  def set_user
    # @user = User.find(params[:id])
    # if params[:id] = "sign_out"
    #   sign_out current_user
    # else
      @user = current_user
    # end
  end

  def user_params
    params.require(:user).permit(:id, :nombre, :apellido, :alumnonombrecompleto, :foto, :email)
  end
end
