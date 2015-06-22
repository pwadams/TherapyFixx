class AssessmentsController < ApplicationController

  def index
    @assessments = Assessment.all
  end

  def new
    @assessment = Assessment.new
  end

  def show
    @assessment = Assessment
  end
end
