class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find(params[:name] => params[:name])
    session[:user_id] = user.id
    redirect_to root_path
  end
end
