class MetricsController < ApplicationController
  def new
    @metric = Metric.new
    5.times {@metric.questions.build}
  end

  def create
    params[:metric][:questions_attributes].each do |key, value|
      params[:metric][:questions_attributes].delete(key) if value[:question].empty?
    end
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
