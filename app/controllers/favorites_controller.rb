class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @favorite = Favorite.new(user_id: current_user.id, plan_id: params[:plan_id])
    @favorite.save
    redirect_to("/plans/#{params[:plan_id]}")
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, plan_id: params[:plan_id])
    @favorite.destroy
    redirect_to("/plans/#{params[:plan_id]}")
  end
end
