class UsersController < ApplicationController
  def index; end

  def new; end

  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    redirect_to show_user_path(id: user.id)
  end

  def show
    @user = User.find(params[:id])
    render 'show'
  end

  private

  def user_params
    params.require(:user).permit(:avatar)
  end
end
