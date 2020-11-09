class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @plans = Plan.includes(:user)
    # @nickname = current_user.nickname
    # @plans = current_user.plans
  end
end
