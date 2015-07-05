class AssessmentsController < ApplicationController
  before_action :authenticate_user, only: [:index, :show]


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
