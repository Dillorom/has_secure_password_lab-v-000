class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find(params[:id])
  end
end
