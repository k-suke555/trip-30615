class PlansController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  def index
    @plans = Plan.order('created_at DESC')
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

  def show
    @plan = Plan.find(params[:id])
    @comment = Comment.new
    @comments = @plan.comments.includes(:user)
  end

  def edit
    redirect_to root_path unless current_user == @plan.user
  end

  def update
    if @plan.update(plan_params)
      redirect_to plan_path(@plan)
    else
      render :edit
    end
  end

  def destroy
    if @plan.user_id == current_user.id
      @plan.destroy
      redirect_to action: :index
    else
      redirect_to action: :index
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:title, :area_id, :lunch_title, :lunch_description, :lunch_type_id, :lunch_price_id, :afternoon_title, :afternoon_description, :afternoon_type_id, :afternoon_price_id, :afternoon_period_id, :image).merge(user_id: current_user.id)
  end

  def set_plan
    @plan = Plan.find(params[:id])
  end
end
