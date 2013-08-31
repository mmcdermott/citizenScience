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
    @questions = @metric.questions
    #TODO: Maybe make metric show page have more summary stats, like how many users have submitted, and global data or something? For now, this is fine, but in the end we'll want to shift to that. 
  end

  def index
    @metrics = Metric.viewable
  end
end
