class UsersController < ApplicationController
  def index; end

  def new; end

  def create
    user = User.create!(name: params[:name], avatar: params[:avatar])
    session[:user_id] = user.id
    redirect_to user_path(user)
  end

  def show
    @user = User.find(params[:id])
  end
end
