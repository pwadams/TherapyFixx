class StressLogsController < ApplicationController
  def new
    @stress_log = StressLog.new
  end

  def show
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
  )
  end
end
