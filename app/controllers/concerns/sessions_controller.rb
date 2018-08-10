class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find(params[:email] => params[:email])
  end
end
