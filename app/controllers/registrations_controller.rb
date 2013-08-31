class RegistrationsController < ApplicationController
  def new
    @metric = Metric.find params[:metric_id]
    @registration = @metric.registrations.new
  end

  def create
    @metric = Metric.find params[:metric_id]
    @registration = @metric.registrations.create(params[:registration])
    redirect_to @metric
  end

  def show
  end

  def edit
  end 

  def update
  end

  def destroy
  end
  
  def index
    @user = User.find(params[:user_id])
    #@registrations = Registration.where user_id: params[:user_id]
    @metrics = @user.metrics
  end
end
