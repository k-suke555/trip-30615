class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def show
    @user = User.find(params[:id])
    @plan = Plan.find_by(id: params[:id])
    @plans = Plan.includes(:user)
    @favorites = Favorite.all
  end

  def favorites
    redirect_to root_path unless current_user.id == params[:id].to_i
    @user = User.find_by(id: params[:id])
    @favorites = Favorite.where(user_id: @user.id)
  end
end
