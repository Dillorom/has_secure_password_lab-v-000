class UsersController < ApplicationController
  def new
    @user = User.find(params[:id])
  end

  def create
    if @user && @user.authenticate(params[:password])
      @user = User.create(params[:user_params])
      redirect_to root_path
    else
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
