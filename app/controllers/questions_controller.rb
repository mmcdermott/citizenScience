class QuestionsController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def index
    @metric = Metric.find params[:metric_id]
    @questions = @metric.questions
  end

  def submit
    question = Question.find(params[:id])
    question.data.create(value: params[:value], user_id: current_user.id)
    redirect_to question.metric
  end
end
