class TestsController < ApplicationController
  def new
    @test = Test.new
    @test.questions.build
  end

  def create
    @test = Test.create params[:test]
    redirect_to @test
  end 

  def show
    @test = Test.find(params[:id])
  end

  def index
  end
end
