class StressLogsController < ApplicationController

  def new
    @stress_log = StressLog.new
  end

  def create
    @stress_log = StressLog.new(stress_log_params)
    if @stress_log.save
    flash[:notice] = "Stress Log created!"
    redirect_to user_path(current_user)
  else
    render :new
  end
end


  def show
    @stress_logs = StressLog.all
    @stress_log = StressLog.find(params[:id])
  end



  private

  def stress_log_params
    params.require(:stress_log).permit(
    :patient_id,
    :date,
    :situation,
    :afraid,
    :angry,
    :annoyed,
    :ashamed,
    :anxious,
    :bored,
    :confused,
    :depressed,
    :disappointed,
    :down,
    :embarrassed,
    :frustrated,
    :guilty,
    :irritated,
    :lonely,
    :sad,
    :jealous,
    :tense,
    :custom,
    :thought1,
    :thought2,
    :thought3,
    :thought4,
    :thought5,
  ).merge(user_id: current_user.id)
  end
end
