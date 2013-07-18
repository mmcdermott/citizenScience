class RegistrationsController < ApplicationController
  def new
    @metric = Metric.find(params[:metric_id])
    @registration = @metric.registrations.new
  end

  def create
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
    @registrations = Registration.all
  end
end
