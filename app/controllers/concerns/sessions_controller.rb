class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find(params[:username] => params[:username])
  end
end
