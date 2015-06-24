class AnxietyScalesController < ApplicationController

  

  def new
    @anxiety_scale = AnxietyScale.new
  end

  def show
    @anxiety_scale = AnxietyScale.find(params[:id])
  end

  private

  def anxiety_scale_params
    params.require(:anxiety_scale).permit(:patient_id, :date, :worrying, :feeling_afraid, :feeling_tense, :difficulty_sleeping)
  end

end
