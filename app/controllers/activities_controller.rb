class ActivitiesController < ApplicationsController
  def index
    @activities = Activitiy.all
  end
end
