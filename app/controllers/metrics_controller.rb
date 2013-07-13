class MetricsController < ApplicationController
  def new
    @metric = Metric.new
    @metric.questions.build
  end

  def create
    @metric = Metric.create params[:metric]
    redirect_to @metric
  end 

  def show
    @metric = Metric.find(params[:id])
  end

  def index
  end
end
