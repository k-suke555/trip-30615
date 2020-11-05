class PlansController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:title, :area_id, :lunch_title, :lunch_description, :lunch_type_id, :lunch_price_id, :afternoon_title, :afternoon_description, :afternoon_type_id, :afternoon_price_id, :afternoon_period_id, :image).merge(user_id: current_user.id)
  end
end
